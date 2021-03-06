class BlogifyCreateBlogPosts < ActiveRecord::Migration
  def self.up
    create_table :blog_posts do |t|
      t.string    :type
      t.string    :title
      t.string    :author
      t.string    :author_pic_url
      t.integer   :views
      t.text      :body
      t.integer   :comment_count
      t.string    :url
      t.date      :posted

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_posts
  end
end
