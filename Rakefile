require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'


begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "siyelo-tweetify"
    gem.summary = %Q{A Rails engine for embedding Twitter extracts}
    gem.description = %Q{A Rails engine for embedding Twitter extracts}
    gem.email = "glenn.roberts@siyelo.com"
    gem.homepage = "http://github.com/siyelo/siyelo-tweetify"
    gem.authors = ["Glenn Roberts"]
    gem.add_development_dependency 'dancroak-twitter-search'
    gem.files =  FileList["[A-Z]*", "{app,config,generators,lib}/**/*", "init.rb"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

desc 'Run Tweetify unit tests.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for Tweetify.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Tweetify'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

desc 'Default: run unit tests.'
task :default => :test