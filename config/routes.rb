Ozgurblog::Application.routes.draw do  
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
    
  get "/about"       => 'main#about', as: 'about'
  get "/contact"     => 'main#contact', as: 'contact'
  
  get 'posts/search' => 'posts#search', as: 'search'

  resources :categories, :posts
  devise_for :users
  
  root 'posts#index'
end
