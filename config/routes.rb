Rails.application.routes.draw do
  root to: "pages#home"

  devise_for :users

  get 'profesores', to: "users#teachers", as: :teachers
  get 'comunidad', to: "users#students", as: :students
  get 'perfil/:id', to: "users#show", as: :user
  get 'perfil/:id/reviews/new', to: "reviews#new", as: :new_review

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

  # Defines the root path route ("/")
  # root "posts#index"

  resources :bookings do
    member do
      patch 'update_status'
    end
  end

  resources :blogs, only: %i[index show]

  resources :chatrooms do
    resources :messages, only: :create




  end
  resources :users, only: [] do
    resources :reviews, only: [:new, :create]
  end

  resources :favorite_teachers, only: %i[index create show destroy]
  # get 'favorite_teachers/index'
  # get 'favorite_teachers/create'
  # get 'favorite_teachers/destroy'

end
