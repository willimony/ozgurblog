Ozgurblog::Application.routes.draw do
  get "/about", to: 'main#about', as: 'about'
  get "/contact", to: 'main#contact', as: 'contact'
  
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get 'posts/search', to: 'posts#search', as: 'search'

  resources :categories, :users, :posts
  root 'posts#index'
end
