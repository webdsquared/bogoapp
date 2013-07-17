class LinksController < ApplicationController

	def create
		@link = current_user.links.create!(params[:link])
		respond_to do |format|
			format.html { redirect_to root_path }
			format.js
		end
	end

	def destroy
		@link = current_user.links.find(params[:id])
		@link.destroy
		redirect_to root_path
	end
end
