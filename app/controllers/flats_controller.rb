class FlatsController < ApplicationController

  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(strong_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
     @flat = Flat.new(strong_params)
    if @flat.save
      redirect_to flats_path
    else
      render :edit
    end

  end

  def destroy
    @flat = Flat.find(params[:id])
  end

private

  def strong_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end

end
