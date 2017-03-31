Rails.application.routes.draw do
	
  get 'braintree/new'

  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    resources :listings, only: [:index, :new, :create]
  end

    resources :listings, only: [:show, :edit, :update, :destroy]

  root to: "welcomes#index"	
  resources :welcomes, only: [:index]

  post 'braintree/checkout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
