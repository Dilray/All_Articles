require 'rails_helper'

RSpec.describe Article, type: :model do
  let!(:user) { User.new(full_name: "John Doe", email: "jdoe@example.com", password: "password") }

  it "is valid with valid attributes" do
    article = Article.new(title: "Test", content: "Test content", user: user)
    expect(article).to be_valid
  end

  it "is not valid without a name" do
    article = Article.new(title: "Test", content: "Test content", user: nil)
    expect(article).to_not be_valid
  end
end


