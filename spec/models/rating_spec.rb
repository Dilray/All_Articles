require 'rails_helper'

RSpec.describe Article, type: :model do
  let!(:user) { User.new(full_name: "John Doe", email: "jdoe@example.com", password: "password") }
  let!(:article) { Article.new(title: "Test", content: "Test content", user: user) }

  it "is valid with valid attributes" do
    rating = Rating.new(user: user, article: article, score: 0)
    expect(rating).to be_valid
  end

  it "is not valid with incorrect score" do
    rating = Rating.new(user: user, article: article)
    expect(rating).to_not be_valid
  end

  it "is not valid without an article" do
    rating = Rating.new(user: user, article: nil)
    expect(rating).to_not be_valid
  end

  it "is not valid without a user" do
    rating = Rating.new(user: nil, article: article)
    expect(rating).to_not be_valid
  end
end