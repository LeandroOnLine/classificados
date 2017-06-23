Rails.application.routes.draw do

  get 'home/index'
  get 'home/logged'
  get 'home/search'
  root 'home#index'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }

  get 'sub_categories/fetch'
  resources :sub_categories  

  resources :categories

  resources :announcements

  # resource :logins
end
