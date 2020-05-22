Rails.application.routes.draw do
  resources :opponents
  resources :user_gundams
  resources :gundams
  resources :items
  resources :inventories
  resources :users
 
  # get '/user_by_name/:id', to: 'users#user_by_name'
end
