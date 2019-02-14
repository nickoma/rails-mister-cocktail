class CocktailsController < ApplicationController
before_action :set_cocktail, only: [:show, :destroy, :update]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end


  def create
    #get anew object of cocktail
    #Populate the new instance of cocktail
    @cocktail = Cocktail.new(cocktail_params)

    #save
    if @cocktail.save
    #redirect to save cocktail :)
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end

  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @restaurant.update(cocktail_params)
    #verify that this works.
    #done without tests and without views
    #@cocktail(cocktail_params).update
    redirect_to cocktail_path(@cocktail)
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end


  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
