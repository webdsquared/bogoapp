class AdminController < ApplicationController
  
	before_filter :authorize_admin

  def dashboard
  	@post = current_user.posts.build
  	@posts = Post.order("publish_on DESC")
    @dashboard_event_list = Event.order("date asc")


  	@game = current_user.games.build
  	@practice = current_user.practices.build
    @admin_users = User.where('admin = ?', true)
  end

  def schedule
  	@game = current_user.games.build
  	@practice = current_user.practices.build
    @event = current_user.events.build
    @event_list = Event.order("created_at asc")
  end

  def roster
    @profile = Profile.new
    @profile_list = Profile.order("player_number asc")
  end

private

  def authorize_admin
    redirect_to root_path unless current_user.present?
  end


  
  
end
