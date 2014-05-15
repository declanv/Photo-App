class PostsController < ApplicationController

 def index
    @post = Post.new
    @posts = Post.all
    @last = @posts.last
  end

  def create
    Post.create(post_attributes)
    redirect_to '/'
  end

  private
  def post_attributes
    params.require(:post).permit(:input_1, :input_2, :input_3, :input_4, :input_5)
  end
end
