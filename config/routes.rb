Rails.application.routes.draw do
  root 'pages#index'

  get '/espanol', to: 'pages#index_spanish'

  resources :messages
end
