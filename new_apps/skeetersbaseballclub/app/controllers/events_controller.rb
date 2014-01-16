class EventsController < ApplicationController

	def new
		@event = Event.new
	end

	def create
		@team = Team.friendly.find(params[:team_id])
		@event = @team.events.create(event_params)
		if @event.save
			redirect_to team_path(@team)
		end
	end

	private

	def event_params
		params.require(:event).permit(:date, :start_time, :arrival, :opponent, :home_away, :game_type, :location, :notes, :event_type, :user_id, :team_id)
	end
end
