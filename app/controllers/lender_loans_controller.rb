class LenderLoansController < ApplicationController

	def show
		@lender_loan = LenderLoan.find_by(id: params[:id])

		@loan_application_id = @lender_loan.loan_application_id

		@loan_application = LoanApplication.find_by(id: @loan_application_id)

		@lender_quote = LenderQuote.find_by(id: @loan_application.lender_quote.id)

		@lender_underwriting_id = @loan_application.lender_quote.lender_underwriting.id

		@lender_underwriting = LenderUnderwriting.find_by(id: @lender_underwriting_id)

		authorize current_user
	end

	def update

		@lender_loan_id = params[:id]

		@lender_loan = LenderLoan.where(id: @lender_loan_id)

		@lender_loan.update(
			approved: 1
			)

		redirect_to dashboard_path

		authorize @lender_loan
	end
end
