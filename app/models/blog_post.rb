class BlogPost < ActiveRecord::Base

  cattr_accessor :default_posterous_user
  @@default_posterous_user = nil

  cattr_accessor :read_timeout
  @@read_timeout = 5.seconds

  cattr_accessor :post_limit
  @@post_limit = 3

  cattr_accessor :debug
  @@debug = false

  attr_accessible :title, :body, :url, :comment_count, :posted


  def self.cache_posts( posterous_user = default_posterous_user, count = post_limit )
    posts = self.read_posts( posterous_user, count)
    self.update_posts(posts)
  end

  protected

    def self.read_posts( posterous_user, count )
      posts = []
      begin
        timeout(read_timeout) do
          reader = Posterous::Reader.new(posterous_user, nil, count)
          posts = reader.response
          if !reader.response[0]      # then we only got one result
            posts = [reader.response]  # force it into an hash of hashes
          end
        end
      rescue TimeoutError
        logger.warn("Timeout accessing Posterous Blog: #{$!}, #{$@}")
      rescue
        logger.warn("Error accessing Posterous blog: #{$!}")
      end

      posts.nil? ? [] : posts
    end

    def self.update_posts(posts)
      unless posts.empty?
        old_posts = self.find(:all, :order => 'created_at')

        posts.each do |p|
          b = self.new( :title          => p['title'],
                        :body           => p['body'],
                        :url            => p['link'],
                        :comment_count  => p['commentsCount'].to_i,
                        :posted         => p['date'].to_date)

          b.save
          # expire oldest
          old_posts.pop.destroy unless old_posts.empty?
        end
      end
    end

end
