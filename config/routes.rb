Rails.application.routes.draw do

    namespace :api do
      get 'payments/create'
    end

    namespace :api, defaults: {format: :json} do
      resources :users, only: [:create, :index]
      resource :session, only: [:create, :destroy, :show]
      resources :tabs, only: [:create, :show]
      resources :payments, only: [:create]
      resources :friendships, only: [:create, :show]
      get 'users/search', :to => 'users#search'
      get 'users/recent_activity', :to => 'users#recent_activity'
    end

    root "static_pages#root"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
