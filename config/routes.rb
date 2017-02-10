Rails.application.routes.draw do

 get "student/lessons/basics_angles"
 
  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }

  root to: "home#index"
 

  resources :courses 
  resources :skills 
  resources :lessons 
  resources :questions 
  resources :answers

  resources :profiles, only: [:show]

  namespace :student do
    resources :courses, only: [:index, :create] do
      resources :skills, only: [:index]
        resources :lessons, only: [:basics_angles]
     end
   end
          
  end

