Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
    get 'search', to: 'search#questions'
    post 'answer', to: 'answer#question'
  end

  namespace :users_backoffice do
    get 'welcome/index'
  end

  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins
    resources :subjects
    resources :questions
  end

  devise_for :users
  devise_for :admins

  get 'inicio', to: 'site/welcome#index'

  root to: 'site/welcome#index'
end
