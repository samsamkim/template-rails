class PostsController < ApplicationController

  def index
    @posts = Post.last(10)
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      format.html { redirect_back(fallback_location: root_path) } if @post.save!
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
