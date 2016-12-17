Rails.application.routes.draw do

  devise_for :users, controllers: {
  	sessions: 'users/sessions',
  	registrations: 'users/registrations'
  }

  root to: "home#index"
  get 'students/basics_angles'

  resources :courses 
  resources :skills 
  resources :lessons 
  resources :questions 
  resources :answers

  resources :profiles, only: [:show]
          
  end

