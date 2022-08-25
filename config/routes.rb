Rails.application.routes.draw do
  root to: 'pages#home'

  get '/about', to: 'pages#about'
  get '/output', to: 'output#index'
  get '/output/:id', to: 'output#show'
end
