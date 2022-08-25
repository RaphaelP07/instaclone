Rails.application.routes.draw do
  get 'likes/create'
  resources :posts, only: [:create, :new] do
    resources :likes, only: :create
  end
  get 'site/index'
  devise_for :users
  root "site#index"
end
