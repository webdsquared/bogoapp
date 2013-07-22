class PagesController < ApplicationController
  def home_alt
  	@users = User.order("name asc")
  	if user_signed_in?
      @user = current_user
  		@note = current_user.notes.build
  		@notes = current_user.notes.order("created_at desc")
  		@home_feed = current_user.feed.order("created_at desc")
  		@transaction = current_user.transactions.build
  		@recent_transactions = current_user.transactions.order("date desc").limit(4)
  		@list = current_user.lists.build
      @item = @list.items.build
  		@shopping_lists = current_user.lists.order("name asc")
      @link = current_user.links.build
      @link_list = current_user.links.order("link_name asc")
   
  	end
  end

  def home
    if user_signed_in?
      @note = current_user.notes.build
      @list = current_user.lists.build
      @link = current_user.links.build
      @transaction = current_user.transactions.build
      @shopping_lists = current_user.lists.order("name asc")
      @link_list = current_user.links.order("link_name asc")
      @recent_transactions = current_user.transactions.order("date desc").limit(4)
      @home_feed = current_user.feed.order("created_at desc")
    end
  end

  def sign_in

  end

  def terms_of_service

  end

  def privacy_agreement 

  end

  def tutorials

  end
  
end
