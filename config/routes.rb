Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'weather#forecast'
      get '/backgrounds', to: 'image#background'
      get '/book-search', to: 'books#index'
    end
  end
end
