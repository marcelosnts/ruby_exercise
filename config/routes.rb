Rails.application.routes.draw do
  root 'sessions#new'
  
  resources :users
  resources :sessions, only: [:new, :create, :destroy]  


  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'dashboard/index'
  get 'self_destroy', to: 'users#destroy', as: 'self_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
