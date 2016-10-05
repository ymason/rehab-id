class LoanApplicationsController < ApplicationController

	include ActionView::Helpers::NumberHelper

	def create


		@lender_quote_id = params[:lender_quote_id]
		@loan_quote_id = params[:loan_quote_id]
		authorize current_user

		if LoanApplication.find_by(lender_quote_id: @lender_quote_id).blank?
		@lender_loan = LenderLoan.create(user_id: params[:lender_id])
		
		@loan_application = LoanApplication.new(
			lender_loan_id: @lender_loan.id,
			lender_quote_id: @lender_quote_id,
			)

			if @loan_application.save

				@loan_quote = LoanQuote.find_by(id: @loan_quote_id)

				@lender_loan.update(
					address: @loan_quote.address,
					city: @loan_quote.city,
					state: @loan_quote.state,
					zip_code: @loan_quote.zip_code,
					loan_application_id: @loan_application.id)

				redirect_to edit_lender_quote_loan_application_path(@lender_quote_id, @loan_application.id)
			else
				redirect_to user_loan_quote_path(current_user.id, @loan_quote_id)

			end	
		else
			@loan_application = LoanApplication.find_by(lender_quote_id: @lender_quote_id)
			redirect_to edit_lender_quote_loan_application_path(@lender_quote_id, @loan_application.id)
		end
	end

	def edit
		@loan_application = LoanApplication.find_by(id: params[:id])

		authorize @loan_application
	end

	def update

		@loan_application = LoanApplication.find_by(id: params[:id])

		@loan_application.update(
			occupied: params[:loan_application][:occupied],
			loan_purpose: params[:loan_application][:loan_purpose],
			entity_name: params[:loan_application][:entity_name],
			entity_type: params[:loan_application][:entity_type],
			state: params[:loan_application][:state],
			ein: params[:loan_application][:ein],
			legal_address: params[:loan_application][:legal_address],
			legal_city: params[:loan_application][:legal_city],
			legal_state: params[:loan_application][:legal_state],
			legal_zip_code: params[:loan_application][:legal_zip_code],
			entity_docs: params[:loan_application][:entity_docs],
			mailing_address: params[:loan_application][:mailing_address],
			mailing_city: params[:loan_application][:mailing_city],
			mailing_state: params[:loan_application][:mailing_state],
			mailing_zip_code: params[:loan_application][:mailing_zip_code],
			owner_name: params[:loan_application][:owner_name],
			owner_title: params[:loan_application][:owner_title],
			owner_email: params[:loan_application][:owner_email],
			owner_ss: params[:loan_application][:owner_ss],
			owner_phone: params[:loan_application][:owner_phone],
			owner_dob: params[:loan_application][:owner_dob],
			guarantor_name: params[:loan_application][:guarantor_name],
			guarantor_email: params[:loan_application][:guarantor_email],
			guarantor_ss: params[:loan_application][:guarantor_ss],
			guarantor_phone: params[:loan_application][:guarantor_phone],
			guarantor_dob: params[:loan_application][:guarantor_dob],
			contact_name: params[:loan_application][:contact_name],
			contact_email: params[:loan_application][:contact_email],
			contact_phone: params[:loan_application][:contact_phone],
			property_instructions: params[:loan_application][:property_instructions],
			rehab_time: params[:loan_application][:rehab_time],
			add_sq_ft: params[:loan_application][:add_sq_ft],
			rehabber: params[:loan_application][:rehabber],
			contractor_name: params[:loan_application][:contractor_name],
			contractor_company: params[:loan_application][:contractor_company],
			contractor_phone: params[:loan_application][:contractor_phone],
			contractor_email: params[:loan_application][:contractor_email],
			closer_name: params[:loan_application][:closer_name],
			closer_company: params[:loan_application][:closer_company],
			closer_email: params[:loan_application][:closer_email],
			closer_phone: params[:loan_application][:closer_phone],
			insurance_name: params[:loan_application][:insurance_name],
			insurance_email: params[:loan_application][:insurance_email],
			insurance_phone: params[:loan_application][:insurance_phone]
			)

			# if update then redirect if not then render edit
			@lender_quote_id = @loan_application.lender_quote_id
			redirect_to lender_quote_loan_application_path(@lender_quote_id, @loan_application.id)

			authorize @loan_application
	end

	def show
		@loan_application = LoanApplication.find_by(id: params[:id])
		authorize @loan_application
	end
end
