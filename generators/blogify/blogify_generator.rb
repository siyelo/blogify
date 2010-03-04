
class BlogifyGenerator < Rails::Generator::NamedBase

  def manifest
    record do |m|

      m.migration_template 'migration.rb', 'db/migrate', :migration_file_name => "blogify_create_blog_posts"

      m.directory "config/initializers"
      m.template  "devise.rb", "config/initializers/devise.rb"


    end
  end

end
