Ozgurblog::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get "/about"       => 'main#about', as: 'about'
  get "/contact"     => 'main#contact', as: 'contact'
  get 'search' => 'posts#search', as: 'search'
    
  scope '/users' do
    get '/login' => 'sessions#new', as: 'login'
    get '/logout' => 'sessions#destroy', as: 'logout'
    
    get '/sign_up' => 'users#new', as: 'sign_up'
  end
  
  resources :categories, :users, :sessions, :posts
  
  root 'posts#index'
end
