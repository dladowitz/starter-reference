require 'rails_helper'

describe UsersController do
  describe "GET new" do
    subject { get :new }
    before { subject }

    it "renders the new template" do
      expect(response).to render_template :new
    end

    it "creates a new user object" do
      expect(assigns(:user)).to be_a_new User
    end
  end

  describe "POST create" do

    context "with valid params" do
      subject { post :create, user: {name: "AndreAmpere", email: "Andre.Ampere@gmail.com", password: "asdfasdf", password_confirmation: "asdfasdf" } }

      it "creates a new user in the database" do
        expect{ subject }.to change{ User.count }.by 1
      end
    end

    context "with INVALID params" do
      subject { post :create, user: {name: "AndreAmpere", email: nil, password: "asdfasdf", password_confirmation: nil } }

      it "does not create a new user in the database" do
        expect{ subject }.not_to change{ User.count }
      end
    end
  end
end
