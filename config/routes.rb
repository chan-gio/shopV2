Rails.application.routes.draw do
  
  get '/cart', to: 'cart#show'

  get '/main', to: 'main#index'

  resource :product

  get '/receipt', to: 'receipt#show'
  post '/receipt/save_data', to: 'receipt#save_data'

  post '/product_receipt/save_data', to: 'product_receipt#save_data'

  get '/your', to: 'your#get_available_colors'

  get '/receipt', to: 'receipt#show'

  get '/product_detail/:name', to: 'product_detail#show', as: 'product_detail'

  get '/payment_method', to: 'payment_method#zalo'
  get '/payment_method', to: 'payment_method#momo'
  get '/payment_method', to: 'payment_method#vnpay'
  get '/payment_method', to: 'payment_method#qrcode'

  get '/admin', to: 'admin#dashboard'
  get '/admin/products', to: 'admin#products'
  get '/admin/receipts', to: 'admin#receipts'
  get '/admin/feedbacks', to: 'admin#feedbacks'
  get '/admin/users', to: 'admin#users'


  get "login", to: "login#new"
  post "login", to: "login#create"


  get "sign_up", to: "registrations#new"
  post "sign_up", to: "registrations#create"

  delete"logout", to: "sessions#destroy"

  root to: 'main#index'

end
