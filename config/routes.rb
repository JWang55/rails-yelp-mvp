Rails.application.routes.draw do
  # get 'restaurants/index', to:'restaurants#index'
  # get 'restaurants/:id', to:'restaurants#show'
  # get 'restaurants/new', to:'restaurants#new'
  # post 'restaurants/index', to:'restaurants#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only:[:index, :create, :new]
  end
end
