Rails.application.routes.draw do



  # resources :articles do
  #   resources :comments]
  # end


  resources :categs do 
    resources :products
  end
  resources :shopkeeper_categories
  resources :roughs
  devise_for :users
  resources :homes

  get 'homes/index'
  root 'homes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
