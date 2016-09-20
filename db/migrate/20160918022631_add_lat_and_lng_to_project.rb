class AddLatAndLngToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :lat, :float
    add_column :projects, :lng, :float
  end
end
