Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  root 'initials#index'
  get 'initials/about'
  get 'events/index'
  get 'events/show'
  get 'mypages/index'
  get 'groups/index'
  get 'groups/show'
  get 'logins/new'

  resources :users
  resources :logins
  resources :groups
  resources :events
  resources :indexs
  resources :password_resets,     only: [:new, :create, :edit, :update]

  get    '/login',   to: 'logins#new' #ログインするためのフォームを表示するページを取得する
  post   '/login',   to: 'logins#create' #新しくメールアドレスやパスワード送信してもらい、データをもとにSessionを作成する
  delete '/logout',  to: 'logins#destroy' #ログアウトでSessionを削除する

   mount ActionCable.server => '/cable'
end
