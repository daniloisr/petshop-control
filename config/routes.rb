BolaDePelo::Application.routes.draw do

  root :to => 'pages#home'
  
  get "pages/home", :as => :home

  resources :orders
  resources :clients
  resources :dogs
end
