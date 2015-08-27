Rails.application.routes.draw do

  root 'authentication#index'
  get 'signup' => 'users#new'
  resources :users
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
