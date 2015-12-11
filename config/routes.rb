Gubbara::Engine.routes.draw do
  root "notices#index"

  resources :notices , only: [:new, :create] do
    member do
      post 'hide'
      post 'close'
    end
  end
end
