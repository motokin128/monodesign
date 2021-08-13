Rails.application.routes.draw do
  devise_for :users
  root 'homes#index'
  resources :posts, only: %i[index show create update]
end
