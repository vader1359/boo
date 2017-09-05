Rails.application.routes.draw do
  resources :images
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "users#test"

  resources :users do
    get 'hello', on: :collection
  end

  
end
