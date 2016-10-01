class CreateBidProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :bid_projects do |t|
      t.references :contractor_bid, foreign_key: true
      t.references :bid, foreign_key: true
      t.integer :total
      t.integer :draws
      t.integer :days
      t.text :breakdown

      t.timestamps
    end
  end
end
