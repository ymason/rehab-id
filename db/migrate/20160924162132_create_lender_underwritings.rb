class CreateLenderUnderwritings < ActiveRecord::Migration[5.0]
  def change
    create_table :lender_underwritings do |t|
      t.references :user, foreign_key: true
      t.decimal :ltv
      t.decimal :arv
      t.integer :experience
      t.integer :fico
      t.decimal :interest_rate
      t.integer :loan_min
      t.integer :loan_max
      t.decimal :origination_fee
      t.integer :term
      t.integer :process_time
      t.integer :pre_payment
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.decimal :ltc
      t.integer :draws
      t.integer :min_draw
      t.decimal :min_final_draw

      t.timestamps
    end
  end
end
