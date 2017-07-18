class EventsController < ApplicationController

  def events
    @event = current_user.events.all
    respond_to do |format|
      format.json {
        render json:
        @event.to_json(
          only: [:id, :title, :start, :end]
        )
      }
    end
  end

  def create
    event = Event.new
    event.attributes = {
      user_id: current_user.id,
      title: params[:title],
      start: params[:start],
      finish: params[:finish],
    }
    event.save
    respond_to do |format|
      format.json {
        render json:
        @event.to_json(
          only: [:id, :title, :start, :end]
        )
      }
    end
  end

  def update
    @event = Event.find(params[:id])
    @event.update(update_params)
  end

  private
  def update_params
    params.permit(:id, :title, :start, :finish)
  end



end
