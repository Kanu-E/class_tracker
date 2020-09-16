Rails.application.routes.draw do
  get '/professors', to: 'professors#index'
  get '/professors/new', to: 'professors#new'
  get '/professors/:id', to: 'professors#show', as: 'professor'
  post '/professors', to: 'professors#create'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
