Rails.application.routes.draw do
  root to: 'restaurants#index'
  resource :restaurants
end
