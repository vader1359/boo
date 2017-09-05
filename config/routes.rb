Rails.application.routes.draw do
  get 'home/index'

  resources :images
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users do

  end



  get "/test" => "home#test"
  root "home#index"
end
