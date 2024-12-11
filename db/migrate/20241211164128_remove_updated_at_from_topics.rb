class RemoveUpdatedAtFromTopics < ActiveRecord::Migration[8.0]
  def change
    remove_column :topics, :updated_at, :datetime
  end
end
