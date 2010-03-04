begin
  require 'twitter_search'
rescue
  gem 'dancroak-twitter-search'
  require 'twitter_search'
end


begin
  require 'rufus/scheduler'
rescue
  gem 'rufus-scheduler'
  require 'rufus/scheduler'
end