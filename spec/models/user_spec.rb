require 'rails_helper'

describe User do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of :email }
  it { should validate_presence_of :password }
  it { should validate_presence_of :password_confirmation }
  it { should validate_uniqueness_of :email }

  it "has a valid factory" do
    user = create :user
    expect(user).to be_instance_of User
  end
end
