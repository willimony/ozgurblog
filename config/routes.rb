Ozgurblog::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  get 'posts/search', to: 'posts#search', as: 'search'

  resources :categories, :users, :posts
  root 'posts#index'
end
