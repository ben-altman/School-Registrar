Rails.application.routes.draw do


  
  get '/signup', to: 'teachers#new'
  post 'signup', to: 'teachers#create'
  get 'teachers/:id', to 'teachers#show', as: 'teacher'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
