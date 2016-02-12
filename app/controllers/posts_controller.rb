class PostsController < ApplicationController
before_action  :set_post, only: [:create, :show, :edit, :update, :destroy]
before_filter :authenticate_user!
  
  def index
    @posts = Post.all
  end

  def show
   # @posts = Post.find(params[:id])
   end

  def edit
  end

  def new
    @post = Post.new
  end

  def _form
  end
 

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save(post_params)
        format.html { redirect_to @post, notice: 'Post was sucessfully posted.' }
      else 
        format.html {render :new}
      end
    end
  end
  

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was sucessfully updated'}
      else
        format.html ( render :edit)
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to post_url, notice: 'Post was sucessfully destroyed'}
    end
  end

private

  def set_post
    @post = Post.find_by(params[:id])
  end
  
  def post_params
   params.require(:post).permit(:message, :time_to_post, :date_to_post, :audience, :location)
  end
end


  






