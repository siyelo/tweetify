Tweet.search_string = "siyelo OR \"siyelo software\""
Tweet.search_agent = "SOME_UNIQUE_IDENTIFIER"

require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new(:frequency => 900.0)

scheduler.every '1h' do
  Tweet.cache_tweets
end