Rails.application.routes.draw do
  root to: "events#index"
  
  get '/events/new', to: 'events#new', as: 'new_event'

  post '/events', to: 'events#create'
end
