class PostsController < ApplicationController

  def index
   @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    if @post.save(post_params)
      flash[:notice] = "Post created!"
      redirect_to post_path(@post)
    else
      flash[:notice] = "Error creating post"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:notice] = "Post updated"
      redirect_to post_path(@post)
    else
      flash[:notice] = "Error updating post"
      render :edit
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
