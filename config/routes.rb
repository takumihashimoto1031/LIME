Rails.application.routes.draw do
  root "limes#index"
  resources :limes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
