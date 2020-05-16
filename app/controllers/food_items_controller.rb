class FoodItemsController < ApplicationController

  def index
    @food_items = FoodItem.all
  end

  def show
    @food_item = FoodItem.find(params[:id])
  end

  def new

  end

  def create
    @food_item = FoodItem.new(food_item_params)
    @food_item.save
    redirect_to @food_item
  end

private
  def food_item_params
    params.require(:food_item).permit(:name, :kcal, :protein, :carbohydrate, :fat)
  end

end
