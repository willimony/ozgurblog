Ozgurblog::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
  
  resources :categories
  resources :users
  resources :posts
  
  root 'posts#index'
end
