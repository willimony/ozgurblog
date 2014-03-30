Ozgurblog::Application.routes.draw do
  get "/about"       => 'main#about', as: 'about'
  get "/contact"     => 'main#contact', as: 'contact'

  resources :categories
  resources :posts do
    get 'search' => 'posts#search', on: :collection, as: 'search'
  end
  
  root 'posts#index'
end
