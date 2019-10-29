Rails.application.routes.draw do
   namespace :api do
    get '/foods' => 'foods#index'
    post '/foods' => 'foods#create'
    get '/foods/:id' => 'foods#show'
    #patch '/foods/:id' => 'foods#update'
    delete '/foods/:id' => 'foods#destroy'

    get '/diet_foods' => 'diet_foods#index'
    

  end
end
