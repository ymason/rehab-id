class AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_authorized, :only => :create

  # GET /appointments/1
  # GET /appointments/1.json
  def show
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments
  # POST /appointments.json
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

  # PATCH/PUT /appointments/1
  # PATCH/PUT /appointments/1.json
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

  # DELETE /appointments/1
  # DELETE /appointments/1.json
  def destroy
    @appointment.destroy
    respond_to do |format|
      format.html { redirect_to appointments_url, notice: 'Appointment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.permit(:name, :phone_number, :time, :time_zone, :bid_id, :contractor_bid_id)
    end
end
