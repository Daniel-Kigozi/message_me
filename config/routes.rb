Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login', to: 'session#new'
  post 'login', to: 'session#create'
  delete 'logout', to: 'session#destroy'
  post 'message', to: 'messages#create'

  mount ActionCable.server, at: '/cable'
end
