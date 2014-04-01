Ozgurblog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  
  get 'search' => 'posts#search', as: 'search'
  get '/author/:id' => 'main#author', as: 'author'
    
  resources :categories, :posts
  
  root 'posts#index'
end
