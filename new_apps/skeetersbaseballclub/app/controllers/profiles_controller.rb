class ProfilesController < ApplicationController

	def new
		@profile = Profile.new
	end

	def create
		@team = Team.friendly.find(params[:team_id])
		@profile = @team.profiles.create(profile_params)
		if @profile.save
			redirect_to team_path(@team)
		end
	end

	def show
		@profile = Profile.find(params[:id])
		respond_to do |format|
			format.html
			format.js
		end
	end

	def destroy
		@profile = Profile.find(params[:id])
		@profile.destroy
		redirect_to admin_roster_path
	end

	private

	def profile_params
		params.require(:profile).permit(:player_first_name, :player_last_name, :player_number, :player_favorite_team, :player_favorite_player, :player_favorite_subject, :player_career, :player_favorite_song, :player_favorite_book, :player_favorite_movie, :player_favorite_food, :player_nickname,:image, :team_id)
	end

end
