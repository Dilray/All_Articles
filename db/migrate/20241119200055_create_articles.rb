class CreateArticles < ActiveRecord::Migration[8.0]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.text :content, null: false
      t.integer :rating, null: false, default: 0
      # t.datetime :created_at, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
  end
end
