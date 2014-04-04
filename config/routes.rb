Ozgurblog::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/about' => 'main#about', as: 'about'
  get '/author/:id' => 'admin_users#show', as: 'admin_user'
  get 'search' => 'posts#search', as: 'search'
  get '/feeds' => 'posts#feed', as: 'feeds'
  
  resources :categories, only: [:index, :show]
  resources :posts, only: [:index, :show]
  resources :messages, only: [:new, :create]
  
  root 'posts#index'
end
