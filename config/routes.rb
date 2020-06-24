Rails.application.routes.draw do
  # devise_for :users
  root 'contents#index'
  resources :contents, only: [:index, :create, :edit, :update, :destroy]
  resources :users, only: [:index, :create, :edit, :update, :show, :destroy]
  resources :places, only: [:create, :edit, :update, :destroy]
end
