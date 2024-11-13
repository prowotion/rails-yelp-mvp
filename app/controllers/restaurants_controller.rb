class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    
    @restaurant = Restaurant.find(params[:id])
  end

  # Un visiteur peut ajouter un nouveau restaurant
  def new
    @restaurant = Restaurant.new
  end

  # et être redirigé vers la vue show de la page de ce nouveau restaurant.
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save!
      redirect_to restaurant_show_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
