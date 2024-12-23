require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  include Devise::Test::ControllerHelpers
  let!(:user) { User.new(full_name: "John Doe", email: "jdoe@example.com", password: "password") }
  let!(:article1) { Article.new(title: "Test1", content: "Test content1", user: user, author: user.full_name) }
  let!(:article2) { Article.new(title: "Test2", content: "Test content2", user: user, author: user.full_name) }

  describe "GET #index" do
    context "when user is logged in" do
      before do
        new_user_registration_path user
        new_article_path article1
        new_article_path article2
        get :index
      end

      it "returns a success response" do
        expect(response).to be_successful
      end

      it "renders the index template" do
        expect(response).to render_template(:index)
      end
    end
  end
end