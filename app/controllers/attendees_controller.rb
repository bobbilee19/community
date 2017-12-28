class AttendeesController < ApplicationController
  before_action :set_attendee, only: [:destroy]

  # def new
  #   @attendee = Attendee.new
  # end
  #
  # def create
  #   @users = User.all
  #   @attendee = Attendee.new(attendee_params)
  #   @attendee.event_id = params[:event_id]
  #
  #   respond_to do |format|
  #     if @attendee.save
  #       format.html { redirect_to event_path(@attendee.event), notice: 'Attendee was successfully created.' }
  #       format.json { render :show, status: :created, location: @attendee }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @attendee.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  def show
    attendee = Attendee.find(params[:id])
    @attendee = attendee.user
  end

  def destroy
    @attendee.destroy
    respond_to do |format|
      format.html { redirect_to attendees_url, notice: 'Attendee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_attendee
      @attendee = Attendee.find(params[:id])
    end

    def attendee_params
      params.require(:attendee).permit(:user_id, :event_id)
    end
end
