Rails.application.routes.draw do

  resources :users
  resources :tests
  mount Gubbara::Engine => "/gubbara"
end
