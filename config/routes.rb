Rails.application.routes.draw do
  resources :hosts, only: [:show, :index] do
      match :search, to: 'hosts#index', via: [:get, :post], on: :collection
  end
  resources :hosts
  resources :os_releases
end
