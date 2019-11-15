Rails.application.routes.draw do
  resources :menu_masters
  resources :tables

  # ユーザー情報
  resources :users
  get 'users/condition/:login_ID' => 'users#condition'
  # get 'users/condition/:name' => 'users#condition'
  # get 'users/condition/:email' => 'users#condition'

  #オーダー情報
  resources :orders
  get 'orders/condition/:order_ID' => 'orders#condition'

  #オーダーセレクト情報
  resources :order_selects
  get 'order_selects/condition/:order_ID' => 'order_selects#condition'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
