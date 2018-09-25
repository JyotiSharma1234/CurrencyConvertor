Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :currencies, only: [:index]
  resource :currency_convertor, only: [:show], controller: :currency_convertor
end
