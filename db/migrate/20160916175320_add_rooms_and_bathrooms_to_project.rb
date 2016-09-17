class AddRoomsAndBathroomsToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :rooms, :integer
    add_column :projects, :bathrooms, :integer
  end
end
