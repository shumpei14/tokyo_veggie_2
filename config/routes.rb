Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  get '/posts' => 'posts#index'
  post 'posts/new' => 'posts#new'
  get 'explain/index' => 'explain#index'
  get 'explain/famous' => 'explain#famous'
  get 'explain/environment' => 'explain#environment'
  resources :posts, only: [:new, :edit, :index, :show, :create] do
  	resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
 end
end
