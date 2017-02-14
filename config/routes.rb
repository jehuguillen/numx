Rails.application.routes.draw do

  devise_for :students
  devise_for :teachers
  get "student/lessons/basics_angles"

  root to: "home#index"


  namespace :teachers do
    resources :courses
    resources :skills
    resources :lessons
    resources :questions
    resources :answers
    resources :profiles, only: [:show]
  end


  namespace :students do
    resources :profiles, only: [:show]
    resources :courses, only: [:index, :show] do
      resources :skills, only: [:index, :show]
      resources :lessons, only: [:basics_angles]
    end
  end
end
