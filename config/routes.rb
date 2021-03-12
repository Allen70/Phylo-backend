Rails.application.routes.draw do
  resources :kingdoms, only: [:index, :show]
  resources :taxons, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end