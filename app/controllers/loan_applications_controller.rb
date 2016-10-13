class LoanApplicationsController < ApplicationController
	include ActionView::Helpers::NumberHelper
	before_action :set_loan_app, only: [:show, :edit, :edit2, :edit3, :edit4, :edit5, :update, :update2, :update3, :update4, :update5, :destroy]
	skip_after_action :verify_authorized, :only => [:edit2, :edit3, :edit4, :edit5, :update2, :update3, :update4, :update5]
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

				redirect_to loan_edit_path(@lender_quote_id, @loan_application.id)
			else
				redirect_to user_loan_quote_path(current_user.id, @loan_quote_id)

			end	
		else
			@loan_application = LoanApplication.find_by(lender_quote_id: @lender_quote_id)
			redirect_to loan_edit_path(@lender_quote_id, @loan_application.id)
		end
	end

	def edit
		authorize @loan_application
		# if update then redirect if not then render edit
	end

	def edit2
	end

	def edit3
	end

	def edit4
	end

	def edit5
	end

	def update
		@loan_application.update(application_params)
		@loan_application.loan_purpose = params[:loan_application][:loan_purpose].to_i
		@loan_application.occupied = params[:loan_application][:occupied].to_i
		@lender_quote_id = @loan_application.lender_quote_id
		redirect_to loan_edit2_path(@lender_quote_id, @loan_application.id)

		authorize @loan_application
	end

	def update2
		@loan_application.update(application_params)
		@loan_application.loan_purpose = params[:loan_application][:loan_purpose].to_i
		@loan_application.occupied = params[:loan_application][:occupied].to_i
		@lender_quote_id = @loan_application.lender_quote_id
		redirect_to loan_edit3_path(@lender_quote_id, @loan_application.id)
	end

	def update3
		@loan_application.update(application_params)
		@loan_application.loan_purpose = params[:loan_application][:loan_purpose].to_i
		@loan_application.occupied = params[:loan_application][:occupied].to_i
		@lender_quote_id = @loan_application.lender_quote_id
		redirect_to loan_edit4_path(@lender_quote_id, @loan_application.id)
	end

	def update4
		@loan_application.update(application_params)
		@loan_application.loan_purpose = params[:loan_application][:loan_purpose].to_i
		@loan_application.occupied = params[:loan_application][:occupied].to_i
		@lender_quote_id = @loan_application.lender_quote_id
		redirect_to loan_edit5_path(@lender_quote_id, @loan_application.id)

	end

	def update5
		@loan_application.update(application_params)
		@loan_application.loan_purpose = params[:loan_application][:loan_purpose].to_i
		@loan_application.occupied = params[:loan_application][:occupied].to_i
		@lender_quote_id = @loan_application.lender_quote_id
		redirect_to lender_quote_loan_application_path(@lender_quote_id, @loan_application.id)

	end

	def show
		authorize @loan_application
	end

	private

	def set_loan_app
      @loan_application = LoanApplication.find(params[:id])
    end

    def application_params
      params.require(:loan_application).permit(
      	:entity_name, :entity_type, :state, :ein, :legal_address,
      	:legal_city, :legal_state, :legal_zip_code, :entity_docs, :mailing_address, :mailing_city,
      	:mailing_state, :mailing_zip_code, :owner_name, :owner_title,
      	:owner_email, :owner_ss, :owner_phone, :owner_dob, :guarantor_name,
      	:guarantor_email, :guarantor_ss, :guarantor_phone, :guarantor_dob,
      	:contact_name, :contact_email, :contact_phone, :property_instructions, :rehab_time,
      	:rehabber, :contractor_name, :contractor_company, :contractor_phone,
      	:contractor_email, :closer_name, :closer_company, :closer_email, :closer_phone,
      	:insurance_name, :insurance_email, :insurance_phone)
    end
end
