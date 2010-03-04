
class TweetifyInstallGenerator < Rails::Generator::Base

  def manifest
    record do |m|

      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "tweetify_create_blog_posts"

      m.directory "config/initializers"
      m.template  "tweetify.rb", "config/initializers/tweetify.rb"

    end
  end

end
