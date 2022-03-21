Rails.application.routes.draw do
  post 'auth/login'
  post 'auth/signup'
  resources :users
end
