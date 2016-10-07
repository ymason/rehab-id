class LenderLoansController < ApplicationController
	before_action :set_lender_loan, only: [:show, :edit, :update, :destroy]

	def show
		@loan_application_id = @lender_loan.loan_application_id

		@loan_application = LoanApplication.find_by(id: @loan_application_id)

		@lender_quote = LenderQuote.find_by(id: @loan_application.lender_quote.id)

		@lender_underwriting_id = @loan_application.lender_quote.lender_underwriting.id

		@lender_underwriting = LenderUnderwriting.find_by(id: @lender_underwriting_id)

		authorize @lender_loan
	end

	def update
		@lender_loan.update(
			approved: 1
			)

		redirect_to dashboard_path

		authorize @lender_loan
	end

	private

	 def set_lender_loan
      @lender_loan = LenderLoan.find(params[:id])
    end

end
