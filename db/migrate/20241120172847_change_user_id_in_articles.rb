class ChangeUserIdInArticles < ActiveRecord::Migration[8.0]
  def change
    change_column :articles, :user_id, :string
  end
end
