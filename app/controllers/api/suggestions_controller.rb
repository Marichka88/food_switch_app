class Api::SuggestionsController < ApplicationController
   def index
    @suggestions = Suggestion.all
    render 'index.json.jb'
  end

  def show
    @suggestion = Suggestion.find(params[:id])
    render 'show.json.jb'
  end
end
