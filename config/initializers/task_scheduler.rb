require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.start_new(:frequency => 900.0)

scheduler.every '1h' do
  BlogPost.cache_posts
  #BlogPostSubclass.cache_posts( 'some_other_posterous_user', 5)
end