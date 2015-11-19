Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'restaurants#index'
  resources :restaurants do
    resources :menus
    resources :meals
  end
  resources :customers do
    resources :meals
  end


end
