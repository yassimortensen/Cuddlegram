Rails.application.routes.draw do

  resources :photos
  resources :comments
  resources :likes
  resources :pets
  resources :users

  get 'welcome' => 'static#welcome'
  get 'cuddling' => 'users#user_pets' 
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'

  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  root 'static#welcome'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
