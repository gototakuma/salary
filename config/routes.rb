Rails.application.routes.draw do
  get 'sessions/new'

  root 'sessions#new'
  get '/signup', to: 'users#new'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  get 'users/:user_id/pays/:date/:id/show', to: 'pays#show', as: :pays_show
  patch 'users/:user_id/pays/:date/:id/show', to:'pays#update'
  resources :users do
    resources :pays
  end

end
