Rails.application.routes.draw do
  resources :bands do
    resources :events, only: [:new, :create]
  end

  resources :bands do
    resources :band_reviews, only: [:new, :create]
  end

  resources :bars, only: [:index, :show] do
    resources :bar_favs, only: [:create]
  end

  resources :events, except: [:new, :create] do
    resources :participations, only: [ :create ]
  end

  resources :band_reviews, only: :destroy
  resources :bar_favs, only: :destroy
  resources :participations, only: :destroy
  devise_for :users
  root to: 'pages#home'
end
