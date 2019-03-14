Rails.application.routes.draw do
  resources :users
  resources :payments
  resources :friendships
  resources :tabs
  resources :tab_splits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
