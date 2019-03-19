Rails.application.routes.draw do
  resources :student_phonemes
  resources :phonemes
  resources :students
  resources :users
  resources :create_users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
