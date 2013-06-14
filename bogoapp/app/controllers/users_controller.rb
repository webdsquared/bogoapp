class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@user_notes = current_user.notes.order("created_at desc")
  end
end
