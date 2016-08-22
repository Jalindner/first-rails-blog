class PostsController < ApplicationController
	def index
		@all_posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		Post.create(params.require(:post).permit(:title, :body))
		redirect_to '/posts'
	end
end