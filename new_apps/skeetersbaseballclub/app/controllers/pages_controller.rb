class PagesController < ApplicationController


  before_filter :authenticate_user!, except: [:home]

	def team_portal
    @teams = Team.order("name asc")
	end

  def home
  	@users = User.order('created_at DESC')
    @public_posts = Post.order("created_at desc").where("private = ?", false)
    @header_team_list = Team.order('name asc')
  end

  def sponsors
  
  end

  def team_info

  end

  def main
    if user_signed_in?
  	  @users = User.order('created_at DESC')
      @public_posts = Post.order("created_at desc").where("private = ?", false)
    end
  end

  def dashboard
    if user_signed_in?
      @post = current_user.posts.build
      @posts = Post.order("publish_on DESC")
      @dashboard_event_list = Event.order("date asc")
      
      @admin_users = User.where('admin = ?', true)
      @current_users = User.where("admin = ?", false)
      @super_user = User.where("super_admin = ?", true)
    end
  end

  def sample
    if user_signed_in?
      @post = current_user.posts.build
      @posts = Post.order("publish_on DESC")
      @dashboard_event_list = Event.order("date asc")
      
      @admin_users = User.where('admin = ?', true)
      @current_users = User.where("admin = ?", false)
      @super_user = User.where("super_admin = ?", true)
    end
  end

  def roster
    if user_signed_in?
      @profile = Profile.new
      @profile_list = Profile.order("player_number asc")
    end
  end

  def schedule
    if user_signed_in?
      
      @event = current_user.events.build
      @event_list = Event.order("created_at asc")
    end
  end
end
