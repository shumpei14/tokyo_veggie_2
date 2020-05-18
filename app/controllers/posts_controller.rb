class PostsController < ApplicationController
	def index
    	@posts = Post.all
    end
	def top
	end
	def new
		@post = Post.new
    end
    def create
    	@post = Post.new(post_params)
    	@post.user_id = current_user.id
    	@post.save!
    	redirect_to posts_path
    end
    def show
    	@post = Post.find(params[:id])
        @post_comment = PostComment.new
    end
    def edit
    	@post = Post.find(params[:id])
    end
     private
    def post_params
        params.require(:post).permit(:shop_name, :shop_image, :remove_shop_image, :caption, :shop_address, :user_id, :user_name, :post_coments)
    end
end
