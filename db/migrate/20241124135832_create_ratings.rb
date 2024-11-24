class CreateRatings < ActiveRecord::Migration[8.0]
  def change
    create_table :ratings do |t|
      t.integer "article_id", null: false
      t.string "user_id", null: false
      t.integer "score", null: false
      t.timestamps
    end
  end
end
