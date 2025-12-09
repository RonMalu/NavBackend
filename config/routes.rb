Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Auth
  post "/signup" => "users#create"
  post "/login"  => "sessions#create"
  get  "/me"     => "users#show"  # later: use auth to return current_user
  
  # Resources
  resources :observations
  resources :star_patterns, only: [:index, :show]
  resources :wave_patterns, only: [:index, :show]
  resources :bird_migrations, only: [:index, :show]
  
  # get "/wave_patterns" => "wave_patterns#index"
  # get "/wave_pattersn/:id" => "wave_patterns#show"

  # get "/bird_migrations" => "bird_migrations#index"
  # get "/bird_migrations/:id" => "bird_migrations#show"



end

