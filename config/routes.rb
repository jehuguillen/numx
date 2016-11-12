Rails.application.routes.draw do
  resources :users
  get 'student/profile', as: :demo


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
