Gubbara::Engine.routes.draw do
  get 'notices/new'

  post 'notices/create'

  post 'notices/hide'

  post 'notices/close'
end
