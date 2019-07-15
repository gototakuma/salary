Rails.application.routes.draw do
  get 'sessions/new'

  root 'sessions#new'
  get '/signup', to: 'users#new'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  get 'users/:id/pays/:id/show', to: 'pays#show', as: :pays_show
  patch 'users/:id/pays/:id/show', to:'pays#update', as: :update_pays_show
  resources :users do
    resources :pays
  end

end
