class DrinksController < ApplicationController
	before_action :set_drink, only: [:create, :show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]


	def index
		@drinks = Drink.all	
	end

	def show
    @drink = Drink.new
	end

	def new
    	@drink = Drink.new
  	end


	def edit
		@drink= Drink.new
	end

	def create
	   @drink = Drink.find_by(params[:id])

    	respond_to do |format|
      		if @drink.save
        	format.html { redirect_to @drink, notice: 'Drink was sucessfully posted.' }
      		else 
        	format.html {render :new}
      		end
    	end
  end

   def update
    respond_to do |format|
      if @drink.update(drink_params)
        format.html { redirect_to @drink, notice: 'Drink was sucessfully updated'}
      else
        format.html ( render :edit)
      end
    end
  end

 	def destroy
   	 @drink.destroy
   	 respond_to do |format|
     format.html { redirect_to @drink, notice: 'Drink was sucessfully destroyed'}
    end
  end

  private

	def set_drink
		@drink = Drink.find_by(params[:id])
	end

	def drink_params
		params.require(:drink).permit(:drink_name, :category, :image)
	end
end


 
