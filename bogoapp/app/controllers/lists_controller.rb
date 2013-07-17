class ListsController < ApplicationController
	def create
		@list = current_user.lists.build(params[:list])
		if @list.save
			redirect_to root_path
		end
	end

	def show
		@list = current_user.lists.find(params[:id])
		@item = @list.items.build
		@item_list = @list.items.order("created_at asc")

		@shopping_lists = current_user.lists.order("name asc")
		
	end

	def destroy
		@list = current_user.lists.find(params[:id])
		@list.destroy
		redirect_to root_path
	end
end
