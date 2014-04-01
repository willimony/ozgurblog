Ozgurblog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get '/about' => 'main#about', as: 'about'
  get '/author/:id' => 'main#author', as: 'author'
    
  resources :categories, only: [:index, :show]
  resources :posts, only: [:index, :show]
  get 'search' => 'posts#search', as: 'search'
  
  resources :messages, only: [:new, :create]
  
  root 'posts#index'
end
