Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  get 'profesores', to: "users#teachers", as: :teachers
  get 'comunidad', to: "users#students", as: :students
  get 'perfil/:id', to: "users#show", as: :user


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :bookings
  # Defines the root path route ("/")
  # root "posts#index"
end
