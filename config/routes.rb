Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/forcast', to: 'weather#forcast'
      get '/backgrounds', to: 'image#background'

      post '/users', to: 'users#create'
      post '/sessions', to: 'sessions#create'
      post '/road_trip', to: 'road_trip#index'
    end
  end
end
