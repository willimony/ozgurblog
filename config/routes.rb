Ozgurblog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  get 'search' => 'posts#search', as: 'search'
    
  resources :categories, :posts
  
  root 'posts#index'
end
