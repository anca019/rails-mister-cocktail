class CocktailsController < ApplicationController
  def index
    if params[:query].present?
      @cocktails = Cocktail.search_by_name_and_ingredient(params[:query])
    else
      @cocktails = Cocktail.all
    end
  end

  def show
   @cocktail = Cocktail.find(params[:id])
   @dose = Dose.new
  end

  def new
   @cocktail = Cocktail.new
  end
  
  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to  new_cocktail_dose_path(@cocktail)
    else
      render 'new'
    end
  end


  private

  def cocktail_params
   params.require(:cocktail).permit(:name, :photo)
  end
end
