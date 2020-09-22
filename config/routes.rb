Rails.application.routes.draw do
  resources :students, only: %w(index show create edit  new update destroy)
resources :professors, only: %w(index show create edit  new update destroy)
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
