class AddStairsToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :stairs, :boolean
  end
end
