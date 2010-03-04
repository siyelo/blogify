module BlogPostsHelper

  def pluralize_if(count, string)
    result = "#{count.to_s} #{string.pluralize}"
    result = "#{count.to_s} #{string}" if count == 1
    result
  end

end
