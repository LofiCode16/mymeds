Rails.application.routes.draw do
  resources :medictasks
  resources :docs
  resources :members
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'docs#index'
end
