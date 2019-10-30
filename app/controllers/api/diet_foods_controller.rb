class Api::DietFoodsController < ApplicationController
  def index
    @diet_foods = DietFood.all
    render 'index.json.jb'
  end

  def show
    @diet_food = DietFood.find(params[:id])
    render 'show.json.jb'
  end
end
