require 'rails_helper'


describe LandingPagesController do
  describe "GET landing" do
    subject { get :landing }

    it "returns the landing template" do
      subject
      expect(response).to render_template :landing
    end
  end

  describe "GET register" do
    subject { get :register }

    it "returns the register template" do
      subject
      expect(response).to render_template :register
    end
  end
end
