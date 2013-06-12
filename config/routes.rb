BolaDePelo::Application.routes.draw do

  devise_for :users

  root :to => 'pages#home'
  get "pages/home", :as => :home

  resources :orders
  resources :clients do
    resources :dogs, only: :index, controller: "clients/dogs"
  end
  resources :dogs do
    get :orders, :on => :member
  end
  namespace :employee do
    resources :general_informations
  end
end
