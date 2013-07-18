class ItemsController < ApplicationController

	def create
		@shopping_lists = current_user.lists.order("name asc")
		@list = current_user.lists.find(params[:list_id])
		@item = @list.items.create!(params[:item])
		respond_to do |format| 
			format.html { redirect_to list_path(@list) }
			format.js
		end
	end


end
