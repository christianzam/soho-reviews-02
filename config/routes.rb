Rails.application.routes.draw do
  root to: 'pages#home'
  resources :workers
  devise_for :users  
end
