class CreateLenderLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :lender_loans do |t|
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.boolean :approved
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
