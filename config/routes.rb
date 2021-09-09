Rails.application.routes.draw do
  resources :subjects, only: [:index, :show] do
    resources :courses, only: [:new, :create, :index]
  end
  
  resources :courses

  match '/auth/:provider/callback', to: 'sessions#omniauth', via: [:get, :post]
  # get '/auth/:provider', to: 'sessions#omniauth'
  # get '/auth/failure', to: redirect('/')

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/teachers/:id', to: 'teachers#show', as: 'teacher'
  get '/signup', to: 'teachers#new'
  post '/signup', to: 'teachers#create', as: 'teachers'

  get '/home', to: 'static#home'
  root 'static#welcome'



  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
