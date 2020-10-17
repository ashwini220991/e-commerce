Rails.application.routes.draw do

  devise_for :admins

  devise_for :users do
      get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root to: 'products#index'

  resources :products, only: [:index, :show]
  resources :categories, only: [:show]
  resource :cart, only: [:show] do
    put 'add/:product_id', to: 'carts#add', as: :add_to
    #put 'remove/:product_id', to: 'carts#remove', as: :remove_from
    #put 'remove_one/:product_id', to: 'carts#removeone', as: :remove_one
  end
  resources :transaction, only: [:create] 
    post 'transaction', to: "transaction#create"
  
  namespace :admin do
    root to: 'products#index'
    resources :products, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
    resources :orders, only: [:index]
  end

end
