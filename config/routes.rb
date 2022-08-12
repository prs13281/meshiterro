Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#top'
  get'/homes/about' => 'homes#about', as:'about'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]do
    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
    
  end

  resources :users, only: [:show, :edit, :update]

end
  # get 'users/show'
  # get 'users/edit'
  # get 'users/top'
  #root to: "homes#top"
  #get 'postimages/new'
  #get 'postimages/index'
  #get 'postimages/show'
  #上３つを下１つに変更した


  #get 'homes/top'

  #resources :meshiterros


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

