Rails.application.routes.draw do
  #root to: "homes#top"
  root 'homes#top'
  devise_for :users
  get'/homes/about' => 'homes#about', as:'about'
  #get 'postimages/new'
  #get 'postimages/index'
  #get 'postimages/show'
  #上３つを下１つに変更した
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  #get 'homes/top'

  #resources :meshiterros


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
