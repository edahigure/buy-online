Rails.application.routes.draw do
  devise_for :users

  resources :categories do
    resources :expenses
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "categories#index"
  
  get '/sessions/index', to: 'devise/sessions#index', as: :sessions_index
  
  devise_scope :user do
     root "devise/sessions#index"
  end
end
