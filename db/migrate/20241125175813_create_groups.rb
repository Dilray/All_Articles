class CreateGroups < ActiveRecord::Migration[8.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.text :description
      t.references :user, null: false
      t.timestamps
    end
  end
end
