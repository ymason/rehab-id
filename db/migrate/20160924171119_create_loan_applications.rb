class CreateLoanApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_applications do |t|
      t.boolean :occupied
      t.boolean :loan_purpose
      t.string :entity_name
      t.integer :entity_type
      t.string :state
      t.integer :ein
      t.string :legal_address
      t.string :legal_city
      t.string :legal_state
      t.string :legal_zip_code
      t.string :mailing_address
      t.string :mailing_city
      t.string :mailing_state
      t.string :mailing_zip_code
      t.string :owner_name
      t.string :owner_title
      t.string :owner_email
      t.integer :owner_ss
      t.string :owner_phone
      t.date :owner_dob
      t.string :guarantor_name
      t.string :guarantor_email
      t.integer :guarantor_ss
      t.string :guarantor_phone
      t.date :guarantor_dob
      t.date :closing_date
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.text :property_instructions
      t.integer :rehab_time
      t.integer :add_sq_ft
      t.boolean :rehabber
      t.string :contractor_name
      t.string :contractor_company
      t.string :contractor_phone
      t.string :contractor_email
      t.string :closer_name
      t.string :closer_company
      t.string :closer_email
      t.string :closer_phone
      t.string :insurance_name
      t.string :insurance_company
      t.string :insurance_email
      t.string :insurance_phone
      t.references :lender_loan, foreign_key: true
      t.references :lender_quote, foreign_key: true

      t.timestamps
    end
  end
end
