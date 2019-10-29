class Api::DietFoodsController < ApplicationController
  def index
    @foods = DietFood.all
    render 'index.json.jb'
  end

end
