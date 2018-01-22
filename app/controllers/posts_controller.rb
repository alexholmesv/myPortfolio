class PostsController < ApplicationController

def index
	@posts = Post.all.order('created_at DESC')
end

def show
	@post = Post.find(params[:id])
	@posts = Post.order("created_at desc").limit(4).offset(1)
	@target = Post.target_for_link
end

private
	
	# def set_post
	# 	@post = Post.friendly.find(params[:id])
	# end

	def post_params
		params.require(:post).permit(:title, :body, :slug, :url)
	end



end
