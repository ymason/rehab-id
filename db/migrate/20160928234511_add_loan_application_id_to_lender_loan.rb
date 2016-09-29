class AddLoanApplicationIdToLenderLoan < ActiveRecord::Migration[5.0]
  def change
    add_column :lender_loans, :loan_application_id, :integer
  end
end
