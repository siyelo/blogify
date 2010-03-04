# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{siyelo-blogify}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Glenn Roberts"]
  s.date = %q{2010-03-04}
  s.description = %q{A Rails engine for embedding Posterous blog extracts}
  s.email = %q{glenn.roberts@siyelo.com}
  s.extra_rdoc_files = [
    "README.rdoc",
     "TODO"
  ]
  s.files = [
    "README.rdoc",
     "Rakefile",
     "TODO",
     "VERSION",
     "app/helpers/blog_posts_helper.rb",
     "app/models/blog_post.rb",
     "app/views/blog_posts/_list.html.haml",
     "app/views/blog_posts/_long_list.html.haml",
     "generators/blogify/USAGE",
     "generators/blogify/blogify_generator.rb",
     "generators/blogify/templates/README",
     "generators/blogify/templates/blogify.rb",
     "generators/blogify/templates/migration.rb",
     "generators/blogify_views/USAGE",
     "generators/blogify_views/blogify_views_generator.rb",
     "init.rb",
     "lib/blogify.rb"
  ]
  s.homepage = %q{http://github.com/siyelo/siyelo-blogify}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{A Rails engine for embedding Posterous blog extracts}
  s.test_files = [
    "test/performance/browsing_test.rb",
     "test/test_helper.rb",
     "test/unit/blog_post_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<glennr-posterous>, [">= 0.1.7"])
      s.add_development_dependency(%q<httparty>, [">= 0.5.0"])
      s.add_development_dependency(%q<rufus-scheduler>, [">= 2.0.3"])
    else
      s.add_dependency(%q<glennr-posterous>, [">= 0.1.7"])
      s.add_dependency(%q<httparty>, [">= 0.5.0"])
      s.add_dependency(%q<rufus-scheduler>, [">= 2.0.3"])
    end
  else
    s.add_dependency(%q<glennr-posterous>, [">= 0.1.7"])
    s.add_dependency(%q<httparty>, [">= 0.5.0"])
    s.add_dependency(%q<rufus-scheduler>, [">= 2.0.3"])
  end
end

