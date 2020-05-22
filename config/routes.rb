Rails.application.routes.draw do
  resources :opponents
  resources :user_gundams
  resources :gundams
  resources :items
  resources :inventories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
