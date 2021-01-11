class Event < ApplicationRecord
  belongs_to :user

    def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)
    if @event.save!
      flash[:success] = 'Success'
      redirect_to esport_path
    else
      flash[:error] = 'Fail'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to event_path
  end

  private

  def event_params
    params.require(:event).permit(:event_id, :player_id, :player_name)
  end
end
