Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end

  namespace :users_backoffice do
    get 'welcome/index'
  end

  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins, only: [:index, :edit, :update]
  end

  devise_for :users
  devise_for :admins

  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
end
