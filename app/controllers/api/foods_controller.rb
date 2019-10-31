class Api::FoodsController < ApplicationController
  
  def index
    @foods = Food.all

    search_term = params[:search]

    if search_term
      @foods = @foods.where("name iLIKE ?", "%#{search_term}%")
    end

    render 'index.json.jb'
  end

  def create 
    @recipe = Food.new(
                          name: params[:name],
                          stars: params[:stars],
                          energy: params[:energy],
                          fat: params[:fat],
                          saturated_fat: params[:saturated_fat],
                          sugar: params[:sugar],
                          sodium: params[:sodium],
                          default_filter: params[:default_filter]
                         )
render 'show.json.jb'
end

def show
@food = Food.find(params[:id])
render 'show.json.jb'
end

#def update
    #@food = Food.find(params[:id]

    #@food.name = params[:name]
    #@food.energy = params[:energy]
    #@food.fat = params[:fat]
    #@food.saturated_fat = params[:saturated_fat]
    #@sugar = params[:sugar]
    #@sodium = params[:sodium]
    #@default_filter = params[:default_filter]

  #@food.save

  #render 'show.json.jb'
#end

def destroy
    @food = Food.find(params[:id])
    @food.destroy
    render json: {message: "Successfully Destroyed Food"}
end
end


