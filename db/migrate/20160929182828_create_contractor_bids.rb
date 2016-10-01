class CreateContractorBids < ActiveRecord::Migration[5.0]
  def change
    create_table :contractor_bids do |t|
      t.references :user, foreign_key: true
      t.integer :total
      t.integer :draws
      t.integer :days
      t.text :breakdown
      t.boolean :accepted

      t.timestamps
    end
  end
end
