Rails.application.routes.draw do
  resources :artists, only: [:index, :show, :new, :create, :edit, :update] do
    resources :songs, only: [:index, :show, :new, :create]
  end
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :preferences, only: [:index, :show,:new, :create, :edit, :update]
  end
end
