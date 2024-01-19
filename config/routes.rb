Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  get 'profesores', to: "users#teachers", as: :teachers
  get 'comunidad', to: "users#students", as: :students
  get 'perfil/:id', to: "users#show", as: :user

  resources :teaching_language_sessions, only: %i[index new create show destroy]

  #RECOMENDACIÓN Profe Segundo: Evitar rutas anidadas, usar el current_user para llevarse el user_id al teaching_language_session
  #solventando que solamente Teacher pueda crear la materia con if/else
  #mejor solución usar lo visto en Lecture: Authorization & Pundit
  #scope "/perfil/:id" do
  #resources :users, only: %i[teachers], path: '/profesores', as: :teachers
  #resources :teaching_language_sessions, only: %i[new create]
  #end


  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :bookings
  # Defines the root path route ("/")
  # root "posts#index"

  resources :blogs, only: %i[index show]

  resources :chatrooms do
    resources :messages, only: :create
  end
  resources :recipients do
    resources :reviews, except: [:new, :create, :edit]

    get 'reviews/new', to: 'reviews#new', as: 'new_reviews'
    post 'reviews', to: 'reviews#create', as: 'create_reviews'

  end
end
