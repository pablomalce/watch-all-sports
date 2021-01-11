class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    redirect_to events_path
  end

  def new
    @event = Event.new
  end


  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save!
      flash[:success] = 'Success'
      redirect_to esports_path
    else
      flash[:error] = 'Fail'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private

  def event_params
    params.require(:event).permit(:event_id, :player_id, :player_name)
  end
end
