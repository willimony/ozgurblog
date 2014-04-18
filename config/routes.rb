Ozgurblog::Application.routes.draw do
  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :categories, only: [:index, :show]
  resources :posts do
    collection do
      get 'feeds', as: 'feeds'
      get 'search', as: 'search'
    end
  end

  resources :messages,   only: [:new, :create]
  resources :users, only: [:index, :show]
  
  root 'posts#index'
end
