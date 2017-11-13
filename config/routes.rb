Rails.application.routes.draw do
  resources :photos
  resources :comments
  resources :likes
  resources :pets
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
