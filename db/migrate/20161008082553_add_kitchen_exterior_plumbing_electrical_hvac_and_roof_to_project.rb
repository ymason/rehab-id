class AddKitchenExteriorPlumbingElectricalHvacAndRoofToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :kitchen, :boolean
    add_column :projects, :exterior, :boolean
    add_column :projects, :plumbing, :boolean
    add_column :projects, :electrical, :boolean
    add_column :projects, :hvac, :boolean
    add_column :projects, :roof, :boolean
    add_column :projects, :floor, :boolean
  end
end
