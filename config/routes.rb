Rails.application.routes.draw do
  get 'pages/page1'

  get 'pages/page2'

  resources :users

  resources :courses do
    resources :skills do
      resources :lessons do
        resources :questions do
          resources :answers
          
        end

      end
    end

  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
