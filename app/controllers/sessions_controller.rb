class SessionsController < ApplicationController

  PASSWORD = ENV['SPECS_PASSWORD'] || "specs"

  def create
    if params[:password].strip == PASSWORD
      session[:user_id] = User.first
      redirect_to projects_url, notice: "Wazzzup!  Happy #{Date::DAYNAMES[Date.today.wday]}"
    else
      redirect_to sign_in_url, notice: "Ah ah ah, you didn't say the magic word!"
    end
  end

  def destroy
    reset_session
    redirect_to sign_in_url, notice: "Have a good one!"
  end
end
