class LenderUnderwritingsController < ApplicationController

	skip_after_action :verify_authorized, :only => :index

	include ActionView::Helpers::NumberHelper

	def new
		@lender_underwriting = LenderUnderwriting.new

		authorize current_user
	end

	def create

		@interest_rate = (params[:lender_underwriting][:interest_rate].to_f / 100)
		@ltv = (params[:lender_underwriting][:ltv].to_f / 100)
		@arv = (params[:lender_underwriting][:arv].to_f / 100)
		@origination_fee = (params[:lender_underwriting][:origination_fee].to_f / 100)
		@ltc = (params[:lender_underwriting][:ltc].to_f / 100)
		@min_final_draw = (params[:lender_underwriting][:min_final_draw].to_f / 100)

		@lender_underwriting = LenderUnderwriting.new(
			user_id: params[:user_id],
			ltv: @ltv,
			arv: @arv,
			experience: params[:lender_underwriting][:experience],
			fico: params[:lender_underwriting][:fico],
			interest_rate: @interest_rate,
			loan_min: params[:lender_underwriting][:loan_min],
			loan_max: params[:lender_underwriting][:loan_max],
			origination_fee: @origination_fee,
			term: params[:lender_underwriting][:term],
			process_time: params[:lender_underwriting][:process_time],
			pre_payment: params[:lender_underwriting][:pre_payment],
			name: params[:lender_underwriting][:name],
			address: params[:lender_underwriting][:address],
			city: params[:lender_underwriting][:city],
			state: params[:lender_underwriting][:state],
			zip_code: params[:lender_underwriting][:zip_code],
			ltc: @ltc,
			draws: params[:lender_underwriting][:draws],
			min_draw: params[:lender_underwriting][:min_draw],
			min_final_draw: @min_final_draw
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

		# Percentages
		@interest_rate = number_to_percentage(@loan_underwriting.interest_rate * 100, precision: 0)
		@ltv = number_to_percentage(@loan_underwriting.ltv * 100, precision: 0)
		@arv = number_to_percentage(@loan_underwriting.arv * 100, precision: 0)
		@origination_fee = number_to_percentage(@loan_underwriting.origination_fee * 100, precision: 0)
		@ltc = number_to_percentage(@loan_underwriting.ltc * 100, precision: 0)
		@min_final_draw = number_to_percentage(@loan_underwriting.min_final_draw * 100, precision: 0)
		
		# Dollar Amounts
		@loan_min = number_to_currency(@loan_underwriting.loan_min, :precision => 0)
		@loan_max = number_to_currency(@loan_underwriting.loan_max, :precision => 0)
		@min_draw = number_to_currency(@loan_underwriting.min_draw, :precision => 0)

		authorize @user
	end

	def index
		@user = User.find_by(id: params[:user_id])

		@all_lender_under_writing = @user.lender_underwritings.all
	end
end
