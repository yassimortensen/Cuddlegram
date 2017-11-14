Rails.application.routes.draw do
  root 'users#index'
  resources :photos
  resources :comments
  resources :likes, only: [:new, :create]
  resources :pets
  resources :users
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
