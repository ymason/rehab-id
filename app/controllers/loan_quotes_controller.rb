class LoanQuotesController < ApplicationController
	include ActionView::Helpers::NumberHelper
	before_action :set_loan_quote, only: [:show, :edit, :update, :destroy]

	def new
		@loan_quote = LoanQuote.new

		@property_types = LoanQuote.property_types

		authorize current_user
	end

	def create
		@property_types = LoanQuote.property_types

		@loan_quote = LoanQuote.new(loan_quote_params)

		@loan_quote.property_type = params[:loan_quote][:property_type].to_i
		@loan_quote.purchase = params[:loan_quote][:purchase].to_i
		@loan_quote.occupied = params[:loan_quote][:occupied].to_i
		@loan_quote.user_id = current_user.id

		if @loan_quote.save
			redirect_to user_loan_quote_path(current_user.id, @loan_quote.id)
		else
			render 'new'
		end
		authorize current_user
	end

	def show
		@user = User.find(params[:user_id])

		@loan_quote_price = number_to_currency(@loan_quote.price, :precision => 0)

		@loan_quote_down_payment = number_to_currency(@loan_quote.down_payment, :precision => 0)

		@loan_quote_rehab = number_to_currency(@loan_quote.rehab, :precision => 0)

		@loan_quote_arv = number_to_currency(@loan_quote.arv, :precision => 0)

		authorize @loan_quote
	end

	# Add Edit/Update Method

	private

	  def set_loan_quote
      @loan_quote = LoanQuote.find(params[:id])
    end

	def loan_quote_params
      params.require(:loan_quote).permit(:user_id, :fico, :address, :city, :state, :zip_code, :price, :down_payment, :rehab, :arv, :experience, :referral)
    end

end
