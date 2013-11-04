class EventsController < ApplicationController
  def show
    @event = Event.find(params[:id])
  end

  def new
    @title = "Új rendezvény"
    @event = Event.new
    @action = 'create'
  end

  def create
    @event = Event.create(event_params)
    if @event.errors.any?
      render 'new'
    else
      redirect_to root_path, :notice => "A rendezvény mentése sikerült."
    end
  end

  def edit
    @event = Event.find(params[:id])
    @title = @event.name
    @action = 'update'
  end

  def update
    @event = Event.find(params[:id])
    @event.update_attributes(event_params)
    if @event.errors.any?
      render 'edit'
    else
      redirect_to root_path, :notice => "A rendezvény mentése sikerült."
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :date, :start, :end).merge(:user_id=>current_user.id)
  end
end
