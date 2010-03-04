# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def pluralize_if(count, string)
    result = "#{count.to_s} #{string.pluralize}"
    result = "#{count.to_s} #{string}" if count == 1
    result
  end

end
