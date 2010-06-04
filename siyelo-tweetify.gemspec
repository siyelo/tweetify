# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{siyelo-tweetify}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Glenn Roberts"]
  s.date = %q{2010-06-04}
  s.description = %q{A Rails engine for embedding Twitter extracts}
  s.email = %q{glenn.roberts@siyelo.com}
  s.extra_rdoc_files = [
    "README.rdoc",
     "TODO"
  ]
  s.files = [
    "CHANGELOG",
     "MIT-LICENSE",
     "README.rdoc",
     "Rakefile",
     "TODO",
     "VERSION",
     "app/models/tweet.rb",
     "app/views/tweets/_list.html.haml",
     "generators/tweetify_install/USAGE",
     "generators/tweetify_install/templates/README",
     "generators/tweetify_install/templates/migration.rb",
     "generators/tweetify_install/templates/tweetify.rb",
     "generators/tweetify_install/tweetify_install_generator.rb",
     "generators/tweetify_views/USAGE",
     "generators/tweetify_views/tweetify_views_generator.rb",
     "init.rb",
     "lib/tweetify.rb"
  ]
  s.homepage = %q{http://github.com/siyelo/siyelo-tweetify}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Rails engine for embedding Twitter extracts}
  s.test_files = [
    "test/performance/browsing_test.rb",
     "test/test_helper.rb",
     "test/unit/blog_post_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<edgar-twitter-search>, [">= 0.5.10"])
    else
      s.add_dependency(%q<edgar-twitter-search>, [">= 0.5.10"])
    end
  else
    s.add_dependency(%q<edgar-twitter-search>, [">= 0.5.10"])
  end
end

