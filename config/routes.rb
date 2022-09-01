Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  resources :employers, only: [:create, :index, :show, :update, :destroy]
  resources :admins, only:[:create, :index, :show]

  resources :profiles, only: [:create, :show, :update]
  resources :job_seekers, only: [:show, :create, :index, :destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #post '/login', to: 'sessions#create'
  post '/signup', to: 'sessions#signup'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  #get '/auth', to: 'users#show'

  post '/mpesa_callback', to: 'employers#mpesa_callback'
  post '/mpesa_index', to: 'employers#mpesa_index'


  # Defines the root path route ("/")
  # root "articles#index"
end
