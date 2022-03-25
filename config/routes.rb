Rails.application.routes.draw do
  post 'auth/login'
  post 'auth/signup'
  resource :user
  resources :subjects
  resources :school_years
  resources :school_classes
  resources :departments
  resources :courses
  delete 'courses/:id', to: 'courses#destroy'
end