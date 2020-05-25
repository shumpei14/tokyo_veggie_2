Rails.application.routes.draw do
  root 'home#index'
  get '/posts' => 'posts#index'
  post 'posts/new' => 'posts#new'
  get 'explain/index' => 'explain#index'
  get 'explain/famous' => 'explain#famous'
  get 'explain/environment' => 'explain#environment'
  devise_for :users
  resources :posts, only: [:new, :edit, :index, :show, :create] do
  	resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
 end
end
