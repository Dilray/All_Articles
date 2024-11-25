class AddFullNameToGroups < ActiveRecord::Migration[8.0]
  def change
    add_column :groups, :full_name, :string
  end
end
