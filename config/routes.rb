Rails.application.routes.draw do
  get 'shops/index'
  get 'shops/show'
  get 'shops/new'
  get 'shops/register'
  get 'shops/logged_in'
  get 'shops/not_logged_in'
  get 'shops/setting'
  get 'shops/result'
  get 'sessions/new'
  get 'main/index'
  get 'main/show'
  get 'users/index'
  get 'users/show'
  get 'users/register'
  get 'users/new'
  get 'users/logged_in'
  get 'users/not_logged_in'
  get 'users/break'
  get 'users/break_out'
  get 'users/setting'
  post 'users' => 'users#register'
  post 'shops' => 'shops#register'
  post 'shops/new' => 'shops#create'
  post 'shops/setting' => 'shops#update'
  patch '/shops/setting' => 'shops#update'
  put '/shops/setting' => 'shops#update'
  post 'users/new' => 'users#create'
  post 'users/setting' => 'users#update'
  patch '/users/setting' => 'users#update'
  put '/users/setting' => 'users#update'
  get 'users/show/:user_id' => "users#show"
  get    'users/logged_in',   to: 'sessions#new'
  post   'users/logged_in',   to: 'sessions#create'
  delete 'users/not_logged_in',  to: 'sessions#destroy'
  get    'shops/logged_in',   to: 'sessions#new'
  post   'shops/logged_in',   to: 'sessions#create'
  delete 'shops/not_logged_in',  to: 'sessions#shop_destroy'
  get 'users/break_out', to:'sessions#taikaiout'
  get 'users/break_zumi'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
