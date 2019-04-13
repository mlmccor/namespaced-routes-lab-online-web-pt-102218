Rails.application.routes.draw do
  resources :songs, only: [:index, :show, :new, :create]
  resources :artists, only: [:index, :show, :new, :create]

  resources :preferences, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :preferences, only: [:index]
  end
end
