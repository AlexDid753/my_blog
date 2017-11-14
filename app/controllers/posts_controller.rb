class PostsController < ApplicationController
  before_action :admin_user, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    #render text: params[:post].inspect
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def delete
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
end

private
def post_params
  params.require(:post).permit(:title, :text, :theme)
end

def admin_user
  redirect_to(root_url) unless current_user.try(:admin?)
end




