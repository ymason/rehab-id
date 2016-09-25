class LenderUnderwritingsController < ApplicationController

	include ActionView::Helpers::NumberHelper

	def new
		@lender_underwriting = LenderUnderwriting.new

		authorize current_user
	end

	def create

		@lender_underwriting = LenderUnderwriting.new(
			user_id: params[:user_id],
			ltv: params[:lender_underwriting][:ltv],
			arv: params[:lender_underwriting][:arv],
			experience: params[:lender_underwriting][:experience],
			fico: params[:lender_underwriting][:fico],
			interest_rate: params[:lender_underwriting][:interest_rate],
			loan_min: params[:lender_underwriting][:loan_min],
			loan_max: params[:lender_underwriting][:loan_max],
			origination_fee: params[:lender_underwriting][:origination_fee],
			term: params[:lender_underwriting][:term],
			process_time: params[:lender_underwriting][:process_time],
			pre_payment: params[:lender_underwriting][:pre_payment],
			name: params[:lender_underwriting][:name],
			address: params[:lender_underwriting][:address],
			city: params[:lender_underwriting][:city],
			state: params[:lender_underwriting][:state],
			zip_code: params[:lender_underwriting][:zip_code],
			ltc: params[:lender_underwriting][:ltc],
			draws: params[:lender_underwriting][:draws],
			min_draw: params[:lender_underwriting][:min_draw],
			min_final_draw: params[:lender_underwriting][:min_final_draw]
			)

		authorize current_user

		if @lender_underwriting.save
			redirect_to user_lender_underwriting_path(current_user.id, @lender_underwriting.id)
		else
			render 'new'
		end
	end

	def show

		@loan_underwriting = LenderUnderwriting.find_by(id: params[:id])

		@user = User.find_by(id: params[:user_id])

		authorize @user
	end
end
