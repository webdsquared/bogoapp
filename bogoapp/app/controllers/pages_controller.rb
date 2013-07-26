class PagesController < ApplicationController
  def home_alt
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
