Rails.application.routes.draw do

  root 'home#index'
  devise_for :users
  get 'home/index'
  get 'posts/index'
  get 'recommand/index'
  get 'home/recommand'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts

  resources :users, only: [:index, :show]
end
