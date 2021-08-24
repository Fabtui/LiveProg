Rails.application.routes.draw do
  resources :bands do
    resources :events, only: [:new, :create]
  end

  resources :bars, only: [:index, :show]
  resources :events, except: [:new, :create] do
    resources :participations, only: [:new, :create]
  end

  resources :participations, only: :destroy
  devise_for :users
  root to: 'pages#home'
end