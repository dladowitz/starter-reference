class RegistrationsController < ApplicationController
  before_action :load_registration, only: [:new, :create]

  def new
    render layout: "landing_page/landing_layout"
  end

  def create
    if @registration.save
      redirect_to confirmation_registrations_path
    else
      render :new
    end
  end

  private

  def registration_params
    params.require(:registration).permit(:email)
  end

  def load_registration
    if params[:registration]
      @registration = Registration.new registration_params
    else
      @registration = Registration.new
    end
  end
end
