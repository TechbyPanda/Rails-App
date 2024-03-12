Rails.application.routes.draw do
  resources :users
  root "static_pages#home"
  get "/all_posts", to: 'posts#all_posts'
  get "/posts_table", to: 'posts#posts_table'
  get "/slack", to: 'static_pages#slack'
  put "/post/:id/publish", to: 'posts#publish'
  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy, :show]
end
