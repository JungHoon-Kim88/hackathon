Rails.application.routes.draw do
  get 'likes/create'
  resources :posts
  devise_for :users
  
  post 'posts/:post_id/likes' => 'likes#create'
  
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
