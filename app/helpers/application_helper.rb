module ApplicationHelper


  def full_title(title)
    base_title = "Ruby on Rails Tutorial Sample App"

    if title.blank?
      return base_title
    else
      return "#{base_title} | #{title}"
    end

  end


end
