Gubbara::Engine.routes.draw do
  root "notices#index"

  resources :notices do
    member do
      post 'hide'
      post 'close'
    end
  end
end
