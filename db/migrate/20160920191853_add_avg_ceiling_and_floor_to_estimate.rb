class AddAvgCeilingAndFloorToEstimate < ActiveRecord::Migration[5.0]
  def change
    add_column :estimates, :avg_ceiling, :integer
    add_column :estimates, :avg_floor, :integer
  end
end
