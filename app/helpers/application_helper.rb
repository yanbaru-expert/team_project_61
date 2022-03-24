module ApplicationHelper
  def max_width
    if controller_name == "texts" && action_name == "show"
      "mw-md"
    # Devise 導入後にコメントアウトを解除
    elsif devise_controller?
      "mw-sm"
    else
      "mw-xl"
    end
  end

  def full_title
    if params[:genre] == "php"
      
    else
      "#{page_title} - #{BASE_TITLE}"
    end
  end
end
