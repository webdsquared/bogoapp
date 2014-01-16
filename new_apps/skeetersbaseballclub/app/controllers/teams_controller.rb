class TeamsController < ApplicationController

	before_filter :authenticate_user!

	def index
		@teams = Team.order('name asc')
		@team = Team.new

	end

	def new
		@team = teams.new
	end

	def create
		@team  = Team.create(team_params)
		if @team.save
			redirect_to teams_path
		end
	end

	def show
		@team = Team.find_by_slug(params[:id])
		@dashboard_event_list = Event.order("date asc")
		@admin_users = User.where('admin = ?', true)
    @current_users = User.where("admin = ?", false)
    @super_user = User.where("super_admin = ?", true)	
    @event_list = Event.order("created_at asc")
    @profile_list = Profile.order("player_number asc")
	end

	def destroy
		@team = Team.find(params[:id])
		@team.destroy
		redirect_to teams_path
	end

	private

	def team_params
		params.require(:team).permit(:name, :user_id, :slug)
	end

	def team_news
		@team = Team.find_by_slug(params[:id])
		@dashboard_event_list = Event.order("date asc")
		@admin_users = User.where('admin = ?', true)
    @current_users = User.where("admin = ?", false)
    @super_user = User.where("super_admin = ?", true)
	end

	def dashboard
		@team = Team.find(params[:id])
		@post = @team.posts.build
	end

	def schedule

	end

	def roster

	end

end
