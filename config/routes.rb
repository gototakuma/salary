Rails.application.routes.draw do
  get 'sessions/new'

  root 'sessions#new'
  get '/signup', to: 'users#new'
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  get 'users/:id/pays/:id/new', to: 'pays#show', as: :pays_new #クイック入力モーダル
  get 'users/:id/pays/:id/edit', to: 'pays#edit', as: :pays_edit#編集モーダル
  patch 'users/:id/pays/:id/update', to:'pays#update', as: :update_pays #クイック入力モーダル(update)
  resources :users do
    resources :pays
  end

end
