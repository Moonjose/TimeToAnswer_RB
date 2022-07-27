Rails.application.routes.draw do
  namespace :admins_backoffice do
    get 'admins/index'
  end
  namespace :site do
    get 'welcome/index'
  end
  namespace :users_backoffice do
    get 'welcome/index'
  end
  namespace :admins_backoffice do
    get 'welcome/index'
  end
  devise_for :users
  devise_for :admins
  root to: 'site/welcome#index'
end
