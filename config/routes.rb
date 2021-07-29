Rails.application.routes.draw do
  root to: 'pages#home'
  get 'profile', to: 'pages#profile'
  resources :workers
  devise_for :users  
end
