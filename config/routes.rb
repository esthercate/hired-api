Rails.application.routes.draw do
  resources :profiles, only: [:create, :show, :update]
  resources :job_seekers, only: [:show, :create, :index, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post '/login', to: 'sessions#create'
  get '/auth', to: 'users#show'
  delete '/logout', to: 'sessions#destroy'


  # Defines the root path route ("/")
  # root "articles#index"
end
