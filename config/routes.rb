Rails.application.routes.draw do
  resources :student_phonemes
  resources :phonemes, only: [:index] 
  resources :students
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
