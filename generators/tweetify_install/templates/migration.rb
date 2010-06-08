class TweetifyCreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.string    :type
      t.datetime :tweet_created_at
      t.string  :from_user
      t.text    :text
      t.string  :tweet_id
      t.string  :link

      t.timestamps
    end
  end

  def self.down
    drop_table :tweets
  end
end
