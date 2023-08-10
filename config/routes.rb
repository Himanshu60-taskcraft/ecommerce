Rails.application.routes.draw do



  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # resources :articles do
  #   resources :comments]
  # end


  resources :categs do 
    resources :products
  end
  # resources :shopkeeper_categories
  # resources :roughs
  devise_for :users
  resources :homes

  get 'homes/index'
  root 'homes#index'

  get '/search', to: "homes#search"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
