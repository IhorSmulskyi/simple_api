Rails.application.routes.draw do
  resources :products
  mount SwaggerUiEngine::Engine, at: "/api_docs"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'sessions/create'
  post 'authenticate', to: 'sessions#create'
end
