class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end
  def create
    @dose = Dose.new(dose_params)
    if @dose.save
      redirect_to cocktail_path(@dose)
    else
      @dose = Dose.new(dose_params)
      render :new
    end
  end

  def destroy
    @dose = Cocktail.dose.find(params[:id]) #??? find the resto first and then the dose 
    @dose.delete
    redirect_to 
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end
end
