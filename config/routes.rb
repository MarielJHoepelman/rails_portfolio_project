Rails.application.routes.draw do

  root to: 'sessions#home'

  get 'home' => 'users#show', :as => :home

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/auth/google_oauth2/callback' => 'sessions#google'

#for adding an existing product to an user product collection
  resources :products, only: [:new, :create] do
    resources :user_products, only: [:new, :create]
  end

#for editing and deleting an user product.
  resources :user_products, only: [:destroy, :update]

#creates a new category.
#creates new product under category.
#shows user product list.
  resources :categories, only: [:new, :create] do
    resources :products, only: [:new, :index, :create]
    resources :user_products, only: [:index, :edit]
  end
end
