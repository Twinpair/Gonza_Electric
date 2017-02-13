Rails.application.routes.draw do
  root 'pages#index'

  get '/espanol', to: 'pages#index_spanish'
end
