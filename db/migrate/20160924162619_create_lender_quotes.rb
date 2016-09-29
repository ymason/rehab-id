class CreateLenderQuotes < ActiveRecord::Migration[5.0]
  def change
    create_table :lender_quotes do |t|
      t.decimal :interest_rate
      t.integer :loan_purchase
      t.integer :loan_rehab
      t.decimal :origination_fee
      t.integer :term
      t.integer :pre_payment
      t.integer :draws
      t.integer :min_draw
      t.decimal :min_final_draw
      t.references :loan_quote, foreign_key: true
      t.references :lender_underwriting, foreign_key: true

      t.timestamps
    end
  end
end
