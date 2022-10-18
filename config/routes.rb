Rails.application.routes.draw do
  resources :missions, only: [:create]
  resources :scientists
  resources :planets, only: [:index]

end
