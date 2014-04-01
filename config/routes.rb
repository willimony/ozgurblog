Ozgurblog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get '/about' => 'main#about', as: 'about'
  get '/contact' => 'main#contact', as: 'contact'
  
  get 'search' => 'posts#search', as: 'search'
  get '/author/:id' => 'main#author', as: 'author'
    
  resources :categories, :posts
  
  root 'posts#index'
end
