class Api::DietsController < ApplicationController
 def index
    @diets = Diet.all
    render 'index.json.jb'
  end

  def show
    @diet = Diet.find(params[:id])
    render 'show.json.jb'
  end
end
