Rails.application.routes.draw do
  resources :computertypes
  get 'dashboard/index'
  get 'login/index'

  resources :measurementunits
  root 'login#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
