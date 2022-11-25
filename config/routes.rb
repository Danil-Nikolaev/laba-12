Rails.application.routes.draw do
  get 'welcome/index'
  get 'calc/input'
  get 'calc/view'

  resources :sessions, :only => [:new, :create, :destroy]
  resources :users
  get 'users/index'
  root "welcome#index"
  get '/signup',  :to => 'users#new'
  get '/signin',  :to => 'sessions#new'
  get '/signout', :to => 'sessions#destroy'  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
