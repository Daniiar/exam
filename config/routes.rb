Rails.application.routes.draw do
  root 'guests#index'

  get 'images/index'

  get 'categories/index'

  get 'places/index'
  get 'places/new'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
