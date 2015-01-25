class SessionsController < ApplicationController
  def new
    render layout: "landing_page/landing_layout"
  end

  def create
    redirect_to root_path
  end
end
