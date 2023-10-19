Rails.application.routes.draw do
  get 'bids/index'
  get 'bids/show'
  get 'bids/new'
  get 'bids/create'
  get 'bids/delete'
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check



  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  root to: "home#index"

  resource :accounts, only: [:show]

  get "games" => "games#index"
  get "games/:id" => "games#show"
  # Defines the root path route ("/")
  # root "posts#index"

end
