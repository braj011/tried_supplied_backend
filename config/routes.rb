Rails.application.routes.draw do
  resources :supplier_produces
  resources :produces
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
