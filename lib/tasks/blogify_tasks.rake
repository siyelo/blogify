namespace :blogify do
  desc "Sync extra files from blogify plugin"
  task :sync do
    system "rsync -ruv vendor/plugins/blogify/db/migrate db"
  end

end