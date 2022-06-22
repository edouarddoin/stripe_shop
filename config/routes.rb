Rails.application.routes.draw do
  get 'orders/create'
  get 'orders/update'
  get 'orders/delete'
  get 'orders/validate'

  root to: 'products#index'

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
