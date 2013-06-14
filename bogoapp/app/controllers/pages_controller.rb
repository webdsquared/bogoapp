class PagesController < ApplicationController
  def home
  	@users = User.order("name asc")
  	if user_signed_in?
  		@note = current_user.notes.build
  		@notes = current_user.notes.order("created_at desc")
  		@home_feed = current_user.feed.order("created_at desc")
  	end
  end
end
