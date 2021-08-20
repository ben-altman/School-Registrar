Rails.application.routes.draw do
  root 'sessions#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/teachers/:id', to: 'teachers#show', as: 'teacher'
  get '/signup', to: 'teachers#new'
  post '/signup', to: 'teachers#create', as: 'teachers'
  # resources :teachers

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
