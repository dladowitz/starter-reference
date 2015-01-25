require 'rails_helper'

describe SessionsController do
  describe "GET new" do
    subject { get :new }

    it "renders the new template" do
      subject
      expect(response).to render_template :new
    end
  end
end
