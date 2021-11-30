Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "homes#index"

  get '/foods', to: 'homes#index'
  get '/foods/:id', to: 'homes#index'
  get '/restaurants', to: 'homes#index'
  get '/restaurants/:id', to: 'homes#index'


  namespace :api do
    namespace :v1 do
      resources :foods, only:[:index, :show] do
        resources :restaurants, only:[:show]
      end
    end
  end

  namespace :api do
    namespace :v1 do
      resources :restaurants, only:[:show] do
        resources :reviews, only:[:create]
      end
    end
  end
end
