class AddBuiltYearToProject < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :built_year, :integer
  end
end
