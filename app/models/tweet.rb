class Tweet < ActiveRecord::Base

  cattr_accessor :search_string
  @@search_string = "siyelo OR \"siyelo software\""

  cattr_accessor :search_agent
  @@search_agent = 'tweetify_agent'

  cattr_accessor :read_timeout
  @@read_timeout = 5.seconds

  cattr_accessor :tweet_limit
  @@tweet_limit = 3

  attr_accessible :tweet_created_at,
                  :text,
                  :from_user,
                  :tweet_id,
                  :link

  def self.cache_tweets
    tweets = self.read_tweets
    self.update_tweets(tweets)
  end

  protected

    def self.read_tweets
      tweets = []
      begin
        timeout(read_timeout) do
          client = TwitterSearch::Client.new(search_agent)
          tweets = client.query(:q => search_string, :rpp => tweet_limit, :page => '1')
        end
      rescue TimeoutError
        logger.warn("Timeout accessing Twitter: #{$!}, #{$@}")
      rescue
        unless $!.message.match /302 Moved Temporarily/  #then no search results returned.
          logger.warn("Error accessing Twitter: #{$!}")
        end
      end

      tweets
    end

    def self.update_tweets(tweets)
      unless tweets.empty?
        old_tweets = Tweet.find(:all, :order => 'tweet_created_at')

        tweets.each do |t|
          n = self.create(:tweet_created_at   => t.created_at.to_time,
                          :text               => t.text,
                          :from_user          => t.from_user,
                          :tweet_id           => t.id,
                          :link               => "http://twitter.com/#{t.from_user}/status/#{t.id}")

          # expire oldest tweet
          old_tweets.pop.destroy unless old_tweets.empty?
        end
      else
        logger.info("No new tweets found.")
      end
    end

end
