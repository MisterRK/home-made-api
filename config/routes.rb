Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, :projects, :steps
  get '/projects/:id/steps', to: 'steps#proj_steps'
  
  get '/projects/:id/image', to: 'projects#show_image'
  
  get 'steps/:id/image', to: 'steps#show_image'
end
