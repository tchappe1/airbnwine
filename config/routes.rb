Rails.application.routes.draw do
  get 'orders/order'

    resources :vins do
        resources :order_items, only: [:new, :create]
    end

  devise_for :users
  root to: 'vins#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
