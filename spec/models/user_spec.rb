require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = User.new(full_name: "John Doe", email: "jdoe@example.com", password: "password")
    expect(user).to be_valid
  end

  it "is not valid without a name" do
    user = User.new(full_name: nil)
    expect(user).to_not be_valid
  end
end