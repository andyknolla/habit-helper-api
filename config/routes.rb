Rails.application.routes.draw do
  resources :day_habits
  resources :days
  resources :users
  resources :habits
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
