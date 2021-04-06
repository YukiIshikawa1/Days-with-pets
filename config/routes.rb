Rails.application.routes.draw do

  root to: "homes#top"
  get "/home/about" => "homes#about"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users,only: [:show,:edit,:update] do
  resources :relationships,only: [:create,:destroy]
  member do
    get :follower, :followed
  end
end

  resources :posts do
    resource :favorites,only: [:create,:destroy]
    resources :comments,only: [:create,:destroy]
  end

  resources :pets
  resources :genres,only: [:index]
  
end
