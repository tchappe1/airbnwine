Rails.application.routes.draw do
  get 'vins/index'

  get 'vins/show'

  get 'vins/edit'

  get 'vins/create'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
