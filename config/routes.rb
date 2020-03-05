Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update, :new, :create]
  resources :books
  root "homes#top"
  get 'home/about' => 'homes#about'
end
