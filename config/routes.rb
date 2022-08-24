Rails.application.routes.draw do
  get 'site/index'
  devise_for :users
  root "site#index"
end
