class AddNameToTopics < ActiveRecord::Migration[8.0]
  def change
    add_column :topics, :name, :string
  end
end
