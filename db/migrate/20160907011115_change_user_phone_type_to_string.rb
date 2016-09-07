class ChangeUserPhoneTypeToString < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :phone

  	add_column :users, :phone, :string
  end
end
