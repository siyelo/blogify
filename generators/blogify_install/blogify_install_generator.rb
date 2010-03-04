
class BlogifyInstallGenerator < Rails::Generator::Base

  def manifest
    record do |m|

      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "blogify_create_blog_posts"

      m.directory "config/initializers"
      m.template  "blogify.rb", "config/initializers/blogify.rb"

    end
  end

end
