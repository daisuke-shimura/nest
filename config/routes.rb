Rails.application.routes.draw do
  root to: 'homes#top'

  resources :users, only: [:index, :show, :new, :edit, :create, :destroy]
  resources :books, only: [:index, :show, :create, :destroy] do
    resources :comments, only: [:create, :destroy]
    resources :holidays, only: [:create, :destroy]
  end
  get "past" => 'books#index2'
  resources :momments, only: [:create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
