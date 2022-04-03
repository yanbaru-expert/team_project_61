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
    base_title = "PHP 動画"
    if params[:genre] == "php"
      base_title
    else
      "Ruby/Rails　動画"
    end
  end
end
