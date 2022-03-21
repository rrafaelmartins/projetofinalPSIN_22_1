Rails.application.routes.draw do
  post 'auth/login'
  post 'auth/signup'
  resources :users
  resources :subjects
  resources :school_years
  resources :school_classes
  resources :departments
  resources :courses
end
