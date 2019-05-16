Rails.application.routes.draw do
  namespace :on_taraf do
    get 'paylasimdetay/index'
    get 'anasayfa/index'
  end
  
  resources :paylasims
  devise_for :users
  get 'panel', to: "admin#index"
  root "on_taraf/anasayfa#index" #ana sayfa
end
