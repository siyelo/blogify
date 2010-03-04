require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "siyelo-blogify"
    gem.summary = %Q{A Rails engine for embedding Posterous blog extracts}
    gem.description = %Q{A Rails engine for embedding Posterous blog extracts}
    gem.email = "glenn.roberts@siyelo.com"
    gem.homepage = "http://github.com/siyelo/siyelo-blogify"
    gem.authors = ["Glenn Roberts"]
    gem.add_development_dependency "glennr-posterous", ">= 0.1.7"
    gem.add_development_dependency "httparty", '>=0.5.0'
    gem.add_development_dependency 'rufus-scheduler', '>=2.0.3'
    gem.files =  FileList["[A-Z]*", "{app,config,generators,lib}/**/*", "init.rb"]
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

desc 'Run Blogify unit tests.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Generate documentation for Blogify.'
Rake::RDocTask.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'Blogify'
  rdoc.options << '--line-numbers' << '--inline-source'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end