Rails.application.routes.draw do
  resources :supplier_produces
  post '/show_produce_by_season', to: 'supplier_produces#show_produce_by_season'
  

  resources :produces
  resources :suppliers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
