Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  resources :atolyelers
  resources :products
  root to: 'pages#home'
  get '/iletisim', to: 'pages#iletisim'
  get '/kimdir', to: 'pages#kimdir'
  get '/referanslar', to: 'pages#referanslar'


  resources :satinals, only: [:index, :show]
  resources :orders, only: [:show, :create] do
  resources :payments, only: [:new, :create]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
