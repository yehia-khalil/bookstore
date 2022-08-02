Rails.application.routes.draw do
  root 'books#index'

  devise_for :admins
  resources :books

  get "/admins/:id", to: 'admins#show', as: 'show_admin'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
