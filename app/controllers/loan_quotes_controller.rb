class LoanQuotesController < ApplicationController

	include ActionView::Helpers::NumberHelper

	def new
		@loan_quote = LoanQuote.new

		authorize current_user
	end

	def create

		@loan_quote = LoanQuote.new(
			user_id: params[:user_id],
			property_type: params[:loan_quote][:property_type].to_i,
			purchase: params[:loan_quote][:purchase],
			occupied: params[:loan_quote][:occupied],
			fico: params[:loan_quote][:fico],
			address: params[:loan_quote][:address],
			city: params[:loan_quote][:city],
			state: params[:loan_quote][:state],
			zip_code: params[:loan_quote][:zip_code],
			price: params[:loan_quote][:price],
			down_payment: params[:loan_quote][:down_payment],
			rehab: params[:loan_quote][:rehab],
			arv: params[:loan_quote][:arv],
			experience: params[:loan_quote][:experience],
			referral: params[:loan_quote][:referral]
			)

		authorize current_user

		if @loan_quote.save
			redirect_to user_loan_quote_path(current_user.id, @loan_quote.id)
		else
			render 'new'
		end
	end

	def show

		@loan_quote = LoanQuote.find_by(id: params[:id])

		@user = User.find_by(id: params[:user_id])

		@loan_quote_price = number_to_currency(@loan_quote.price, :precision => 0)

		@loan_quote_down_payment = number_to_currency(@loan_quote.down_payment, :precision => 0)

		@loan_quote_rehab = number_to_currency(@loan_quote.rehab, :precision => 0)

		@loan_quote_arv = number_to_currency(@loan_quote.arv, :precision => 0)

		authorize @user
	end

	def index
		@user = User.find_by(id: params[:user_id])

		@all_user_loan_quotes = @user.loan_quotes

		authorize @user
	end
end
