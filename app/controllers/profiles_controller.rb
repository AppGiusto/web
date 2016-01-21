class ProfilesController < ApplicationController
  before_filter :authenticate_user!



	def index
		@users = User.all	
	end

	def show
		@user = User.find(params[:id])

   
	end

  def create
  @user = User.create( user_params )
  end

    def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to root_path, notice: 'Event was sucessfully posted.' }
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
  params.require(:user).permit(:name, :email, :zip_code, :image, :status)
end
end

