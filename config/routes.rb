Gubbara::Engine.routes.draw do
  root "notices#index"

  resources :notices do
    member do
      post 'hide'
    end
  end
end
