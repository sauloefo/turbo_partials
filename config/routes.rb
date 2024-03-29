Rails.application.routes.draw do
  resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  get "partial/:model/:id/:field" => "partials#edit", as: :show_partial
  get "partial/:model/:id/:field/edit" => "partials#edit", as: :edit_partial

end
