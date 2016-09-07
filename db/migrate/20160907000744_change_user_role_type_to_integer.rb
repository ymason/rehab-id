class ChangeUserRoleTypeToInteger < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :role

  	add_column :users, :role, :integer, :default => 3
  end
end
