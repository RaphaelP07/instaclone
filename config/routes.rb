Rails.application.routes.draw do
  resources :posts, only: [:create, :new] do
    post "like_post", to: "likes#like_post"
    delete "unlike_post", to: "likes#unlike_post"
    resources :comments, only: [:create, :new] do
      post "like_comment", to: "likes#like_comment"
      delete "unlike_comment", to: "likes#unlike_comment"
    end
  end
  devise_for :users
  root "site#index"
end
