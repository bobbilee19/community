class AttendeesController < ApplicationController
  before_action :set_attendee, only: [:destroy]

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
