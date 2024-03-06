Rails.application.routes.draw do
  resources :users
  root "static_pages#home"
  get "/all_posts", to: 'posts#all_posts'
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy, :show]
end
