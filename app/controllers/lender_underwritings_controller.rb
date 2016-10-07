class LenderUnderwritingsController < ApplicationController
	before_action :set_lender_underwriting, only: [:show, :edit, :update, :destroy]

	include ActionView::Helpers::NumberHelper

	def new
		@lender_underwriting = LenderUnderwriting.new

		authorize current_user
	end

	def create
		@lender_underwriting = LenderUnderwriting.new(lender_underwriting_params)

		@lender_underwriting.interest_rate = (params[:lender_underwriting][:interest_rate].to_f / 100)
		@lender_underwriting.ltv = (params[:lender_underwriting][:ltv].to_f / 100)
		@lender_underwriting.arv = (params[:lender_underwriting][:arv].to_f / 100)
		@lender_underwriting.origination_fee = (params[:lender_underwriting][:origination_fee].to_f / 100)
		@lender_underwriting.ltc = (params[:lender_underwriting][:ltc].to_f / 100)
		@lender_underwriting.min_final_draw = (params[:lender_underwriting][:min_final_draw].to_f / 100)
		@lender_underwriting.user_id = current_user.id
		if @lender_underwriting.save

			redirect_to user_lender_underwriting_path(current_user.id, @lender_underwriting.id)
		else
			render 'new'
		end
		authorize current_user
	end

	def show
		# Percentages
		@interest_rate = number_to_percentage(@lender_underwriting.interest_rate * 100, precision: 0)
		@ltv = number_to_percentage(@lender_underwriting.ltv * 100, precision: 0)
		@arv = number_to_percentage(@lender_underwriting.arv * 100, precision: 0)
		@origination_fee = number_to_percentage(@lender_underwriting.origination_fee * 100, precision: 0)
		@ltc = number_to_percentage(@lender_underwriting.ltc * 100, precision: 0)
		@min_final_draw = number_to_percentage(@lender_underwriting.min_final_draw * 100, precision: 0)
		
		# Dollar Amounts
		@loan_min = number_to_currency(@lender_underwriting.loan_min, :precision => 0)
		@loan_max = number_to_currency(@lender_underwriting.loan_max, :precision => 0)
		@min_draw = number_to_currency(@lender_underwriting.min_draw, :precision => 0)

		authorize @lender_underwriting
	end

	def index
		@user = current_user

		@all_lender_underwriting = @user.lender_underwritings
	end

	private

	 def set_lender_underwriting
      @lender_underwriting = LenderUnderwriting.find(params[:id])
    end

	def lender_underwriting_params
      params.require(:lender_underwriting).permit(
      	:user_id, :ltv, :arv, :experience, :fico, :interest_rate, :loan_min,
       :loan_max, :origination_fee, :term, :process_time,
        :pre_payment, :name, :address, :city, :state, :zip_code, :ltc,
         :draws, :min_draw, :min_final_draw)
    end

end
