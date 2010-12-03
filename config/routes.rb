MehPromo::Application.routes.draw do
  get "pages/index"
  get "pages/features"
  root :to => "pages#index"
  resources :users, :only => :create
end

