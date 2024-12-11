class AddTopicsToArticles < ActiveRecord::Migration[8.0]
  def change
    add_reference :articles, :topics, foreign_key: true
  end
end
