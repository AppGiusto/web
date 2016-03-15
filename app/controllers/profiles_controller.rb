class ProfilesController < ApplicationController
  before_filter :authenticate_user!


	def index
		@users = User.all	
	end

	def show
    @user = User.find(params[:id])
	end

  def new 
  end

  def edit
    @user = User.new
  end

  def update
  respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @event, notice: 'Profile was sucessfully updated'}
      else
        format.html ( render :edit)
      end
    end
  end

  def create
    user = User.find_by(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'Profile was sucessfully posted.' }
      else 
        format.html {render :new}
      end
    end
  end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.
def user_entry
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:name, :email, :zip_code, :avatar, :status)
end
end

