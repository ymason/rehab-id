class ChangeUserZipCodeTypeToInteger < ActiveRecord::Migration[5.0]
  def change
  	remove_column :users, :zip_code

  	add_column :users, :zip_code, :integer
  end
end
