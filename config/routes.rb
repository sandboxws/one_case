OneCase::Application.routes.draw do
  get "home/index"
  resources :organizations
  root :to => 'home#index'
end
