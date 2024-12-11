class RemoveTopicIdFromArticles < ActiveRecord::Migration[8.0]
  def change
    remove_column :articles, :topic_id, :integer
  end
end
