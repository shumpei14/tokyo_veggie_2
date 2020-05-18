Rails.application.routes.draw do
  root 'home#index'
  get '/posts' => 'posts#index'
  post 'posts/new' => 'posts#new'
  devise_for :users
  resources :posts, only: [:new, :edit, :index, :show, :create]
  resource :post_comments, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
