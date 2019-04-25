Rails.application.routes.draw do
  resources :student_phonemes
  resources :phonemes 
  resources :students
  resources :users
  post 'auth/register', to: 'users#create'
  post 'auth/login', to: 'users#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
