class ProfilesController < ApplicationController
before_action :set_profile, only: [:show, :edit, :update, :destroy]

	def index
		@users = User.all
		
	end

	def show
		@user = User.find(params[:id])

	end

  def create
  @user = User.create( user_params )
end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Profile was sucessfully updated'}
      else
        format.html ( render :edit)
      end
    end
  end
private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:name, :city, :state, :zip_code, :avatar)
end
end

