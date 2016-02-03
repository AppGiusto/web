class DrinksController < ApplicationController
	 before_filter :authenticate_user!


	def index
		@drinks = Drink.all	
	
	end

	def shows
	end

	def new
    	@drink = Drink.new
  	end


	def edit
		@drink= Drink.new
	end

	def create
	   @drink = Drink.new(drink_params)

    	respond_to do |format|
      		if @drink.save
        	format.html { redirect_to @drink, notice: 'Drink was sucessfully posted.' }
      		else 
        	format.html {render :new}
      		end
    	end
  end

	def destroy
	end

	private

	def set_drink
		@user = User.find(params[:id])
	end

	def drink_params
		params.require(:drink).permit(:drink_name, :category, :image)
	end
end
