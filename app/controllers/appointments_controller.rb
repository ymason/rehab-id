class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_authorized, :only => :create

  def show
  end

  def edit
  end

  def create
    @appointment = Appointment.new(
        name: params[:name],
        phone_number: params[:phone_number],
        time: params[:time],
        time_zone: params[:time_zone],
        bid_id: params[:bid_id],
        contractor_bid_id: params[:contractor_bid_id]   
      )

    @contractor_bid_id = params[:contractor_bid_id]
    @user_id = params[:user_id]

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to edit_user_contractor_bid_path(@user_id, @contractor_bid_id), notice: 'Appointment was successfully created.' }
        format.json { render :template => 'contractor_bids/edit', status: :created, :locals => {:user_id => @user_id, :id => @contractor_bid_id} }
      else
        format.html { render :template => 'contractor_bids/appointment' }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: 'Appointment was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    def appointment_params
        params.permit(:name, :phone_number, :time, :time_zone, :bid_id, :contractor_bid_id)
      end
end
