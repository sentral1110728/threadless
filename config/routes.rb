Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  root to: "articles#index"
  resources :categories
  resources :articles do
    resources :comments, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
