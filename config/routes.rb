Rails.application.routes.draw do
  root 'pages#index'

  get '/espanol', to: 'pages#index_spanish'
  get '/business-card', to: 'pages#businesscard'

  resources :messages
end
