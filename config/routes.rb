Rails.application.routes.draw do
  
  get '/cart', to: 'cart#show'

  get '/main', to: 'main#index'

  resource :product

  get '/receipt', to: 'receipt#show'
  post '/receipt', to: 'receipt#save_data'

  get '/your', to: 'your#get_available_colors'

  get '/receipt', to: 'receipt#show'

  get '/product_detail/:name', to: 'product_detail#show', as: 'product_detail'

  get '/payment_method', to: 'payment_method#zalo'
  get '/payment_method', to: 'payment_method#momo'
  get '/payment_method', to: 'payment_method#vnpay'
  get '/payment_method', to: 'payment_method#qrcode'

  root to: 'main#index'

end
