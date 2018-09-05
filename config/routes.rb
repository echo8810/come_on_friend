Rails.application.routes.draw do
  get 'logins/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'initials#index'
  get 'initials/about'

  resources :users
  resources :logins

  get    '/login',   to: 'logins#new' #ログインするためのフォームを表示するページを取得する
  post   '/login',   to: 'logins#create' #新しくメールアドレスやパスワード送信してもらい、データをもとにSessionを作成する
  delete '/logout',  to: 'logins#destroy' #ログアウトでSessionを削除する


end
