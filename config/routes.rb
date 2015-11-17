Rails.application.routes.draw do
  devise_for :users
  root to: 'restaurants#index'
  resources :restaurants do
    resources :meals
  end
  resources :customers do
    resources :meals
  end

end
