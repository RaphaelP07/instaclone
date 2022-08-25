Rails.application.routes.draw do
  get 'likes/create'
  resources :posts, only: [:create, :new] do
    resources :comments, only: [:create, :new]
    resources :likes, only: :create do
      collection do
        delete :destroy
      end
    end
  end
  devise_for :users
  root "site#index"
end
