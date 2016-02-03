class PostsController < ApplicationController


  def index
    @posts = Post.all
  end

  def show
 
  end

  def edit
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def _form

  end
 

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
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
    @post = Post.find(params[:id])
    end
  end

  def post_params
   params.require(:post).permit(:message, :time_to_post, :date_to_post, :audience, :location)
    end
  






