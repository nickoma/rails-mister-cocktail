class DosesController < ApplicationController
  def show
    @dose = Dose.find(:id)
  end

  def new
  end

  /cocktails/:cocktail_id/doses
  def create
    #To create a does I need
      #1 cocktail id
      #2 ingredient id
      #3 description
    # Then we can save :)
    @cocktail = Cocktail.find(:cocktail_id)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
