Rails.application.routes.draw do
   namespace :api do
    get '/foods' => 'foods#index'
    post '/foods' => 'foods#create'
    get '/foods/:id' => 'foods#show'
    #patch '/foods/:id' => 'foods#update'
    delete '/foods/:id' => 'foods#destroy'

    get '/diet_foods' => 'diet_foods#index'
    get '/diet_foods/:id' => 'diet_foods#show'

    get '/diets' => 'diets#index'
    get '/diets/:id' => 'diets#show'

    get '/suggestions' => 'suggestions#index'
    get '/suggestions/:id' => 'suggestions#show'
    

  end
end
