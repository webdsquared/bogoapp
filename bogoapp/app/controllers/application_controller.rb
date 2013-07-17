class ApplicationController < ActionController::Base
  protect_from_forgery


  def total_average
    totals = current_user.transactions.sum(:spent) + current_user.transactions.sum(:saved)
    averages = current_user.transactions.sum(:saved) / totals * 100
  end
  helper_method :total_average

  def check_sign_in
  	unless user_signed_in?
  		redirect_to root_path
  	end
  end

  def user_signed_in?
  	return true if current_user
  end
  helper_method :user_signed_in?

   private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
