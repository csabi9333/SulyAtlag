Rails.application.routes.draw do
  resources :majors
  resources :users
  resources :subjects
  root 'users#index'
end
