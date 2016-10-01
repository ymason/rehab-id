class AddAcceptedColumnToBidProject < ActiveRecord::Migration[5.0]
  def change
    add_column :bid_projects, :accepted, :boolean
  end
end
