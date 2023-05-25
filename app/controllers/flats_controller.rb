class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def new
  end

  def create
  end

  def destroy
    @flat = Flat.find(params[:id])
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  def update
    @flat = Flat.find(params[:id])
    @flat.update(flat_params)
    # No need for app/views/flats/update.html.erb
    redirect_to flat_path(@flat)
  end

  private

# Strong Params
def flat_params
  params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
end
end
