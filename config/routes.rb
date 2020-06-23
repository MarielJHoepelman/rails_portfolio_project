Rails.application.routes.draw do

  resources :products do
    resources :user_products, only: [:new, :index, :edit, :create]
  end

  resources :user_products, only: [:create, :destroy, :update ]

  resources :categories do
    resources :products
  end

  resources :users do
    resources :categories do
      resources :user_products, only: [:index, :edit]
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'sessions#home'

  # get '/profile' => 'users#show'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  # log in with Google

  get '/auth/google_oauth2/callback' => 'sessions#google'

  delete 'logout' => 'sessions#destroy'

end
