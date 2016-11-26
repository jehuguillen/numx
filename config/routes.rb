Rails.application.routes.draw do

  resources :users
  resources :courses 
  resources :skills 
  resources :lessons 
  resources :questions 
  resources :answers
          
  end

