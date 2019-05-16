Rails.application.routes.draw do
  resources :faydalars
  get 'panel', to: "admin#index"
  namespace :on_taraf do

  end
  
  
  devise_for :users
  #root "on_taraf/ana_sayfa#index" #ana sayfa
end
