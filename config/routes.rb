Rails.application.routes.draw do
<<<<<<< HEAD
  resources :employers
  resources :admins
=======
  resources :profiles, only: [:create, :show, :update]
  resources :job_seekers, only: [:show, :create, :index, :destroy]
>>>>>>> hinga
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
