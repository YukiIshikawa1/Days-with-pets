Rails.application.routes.draw do

  root to: "posts#top"
  get "/post/about" => "posts#about"
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users,only: [:show,:edit,:update] do
    resources :pets
    resources :relationships,only: [:create,:destroy]
    member do
      get :follower, :followed
    end
 end

  resources :posts do
    resource :favorites,only: [:create,:destroy]
    resources :comments,only: [:create,:destroy]
      collection do
        get :category
      end
      
  end
  
  resources :categories,only: [:index,:new,:create]
  
end
