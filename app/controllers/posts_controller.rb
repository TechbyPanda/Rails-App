class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.published.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post created successfully!"
      redirect_to posts_path
    else
      render :new
    end
  end

  def all_posts
    @search_term = params[:q]
    if @search_term.present?
      @posts = Post.where("title LIKE ? OR body LIKE ?", "%#{@search_term}%", "%#{@search_term}%")
    else
      @posts = Post.all
    end
  end
  
  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post updated successfully!"
      redirect_to posts_path
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post deleted successfully!"
    redirect_to posts_path
  end

  def show
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body, :published)
  end
end
