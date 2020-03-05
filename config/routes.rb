Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  root to: 'pages#home'
  resources :subscriptions
  resources :companies

  resources :transactions, only: [:create, :index]
  post 'get_access_token', to: "transactions#get_access_token"
  post 'set_access_token', to: "transactions#set_access_token"
  get 'get_transactions', to: "transactions#get_transactions"
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
