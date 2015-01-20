class LandingPagesController < ApplicationController

  def landing
    render layout: "landing_page/landing_layout"
  end

  def register
    @registration = Registration.new

    render layout: "landing_page/landing_layout"
  end
end
