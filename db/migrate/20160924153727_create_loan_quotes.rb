class CreateLoanQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_quotes do |t|
      t.references :user, foreign_key: true
      t.integer :property_type
      t.boolean :purchase
      t.boolean :occupied
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.integer :price
      t.integer :down_payment
      t.integer :rehab
      t.integer :arv
      t.integer :experience
      t.integer :fico
      t.string :referral

      t.timestamps
    end
  end
end
