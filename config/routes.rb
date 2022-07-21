require 'sidekiq/web'

Rails.application.routes.draw do
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  resources :tweets, except: %i[edit update]

  resources :profiles
  
  devise_for :users
  root to: 'tweets#index'
end
