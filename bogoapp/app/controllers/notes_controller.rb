class NotesController < ApplicationController

	def create
		@note = current_user.notes.build(params[:note])
		if @note.save
			redirect_to root_path
		end
	end

	def destroy
		@note = current_user.note.find(params[:id])
		@note.destroy
	end
end
