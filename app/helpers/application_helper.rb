module ApplicationHelper
  # Возвращает пользователя, соответствующего remember-токену в куки.
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # Возвращает полный заголовок зависящий от страницы
  def full_title(page_title)
    base_title = "Note Place"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
