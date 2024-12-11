class RemoveCreatedAtFromTopics < ActiveRecord::Migration[8.0]
  def change
    remove_column :topics, :created_at, :datetime
  end
end
