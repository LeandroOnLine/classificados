Rails.application.routes.draw do
  get 'home/index'
  get 'home/logged'
  get 'home/search'
  root 'home#index'
  get 'sub_categories/fetch'

  resources :announcements
  resources :categories
  resources :sub_categories
  resources :accounts
  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
