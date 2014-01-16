class PostsController < ApplicationController

	def new
		@post = Post.new
	end

	def create
		@team = Team.friendly.find(params[:team_id])
		@post = @team.posts.create(post_params)
		if @post.save
			redirect_to team_path(@team)
		end
	end


	private

	def post_params
		params.require(:post).permit(:title, :body, :private, :user_id, :publish_on, :team_id, :slug)
	end

end
