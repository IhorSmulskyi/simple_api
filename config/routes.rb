Rails.application.routes.draw do
  resources :products
  get 'sessions/create'
  post 'authenticate', to: 'sessions#create'
end
