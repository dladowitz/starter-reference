class SessionsController < ApplicationController
  def new
    render layout: "landing_page/landing_layout"
  end

  def create
    @user = User.find_by_email params[:email]

    if @user && @user.authenticate(params[:password])
      session[:id] = @user.id

      flash[:success] = "Welcome, #{@user.first_name}"
      redirect_to user_path(@user)
    else
      flash[:danger] = "Username and/or Password dont appear to be correct"
      redirect_to signin_path
    end
  end
end
