class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  def require_login
    redirect_to sign_in_url, notice: "Please Sign In" unless session[:user_id]
  end

  def perspective_url(item)
    if item.user_story?
      project_url(item.project)
    elsif item.rule?
      rules_project_url(item.project)
    else
      worries_project_url(item.project)
    end
  end
end
