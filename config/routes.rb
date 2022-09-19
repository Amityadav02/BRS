Rails.application.routes.draw do
  root "buses#index"

  resources :buses
end
