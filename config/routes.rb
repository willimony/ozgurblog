Ozgurblog::Application.routes.draw do  
  devise_for :users
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
    
  get "/about"       => 'main#about', as: 'about'
  get "/contact"     => 'main#contact', as: 'contact'
  
  get 'posts/search' => 'posts#search', as: 'search'

  resources :categories, :posts
  
  root 'posts#index'
end
