Rails.application.routes.draw do

  resources :tests
  mount Gubbara::Engine => "/gubbara"
end
