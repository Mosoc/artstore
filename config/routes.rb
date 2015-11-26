Rails.application.routes.draw do
  devise_for :users
  get 'landingpages/index'
  get 'landingpages/home'
  get 'landingpages/help'
  get 'landingpages/about'

    namespace :admin do
        resources :products
        resources :users
        resources :users do
          member do
            post :to_admin
            post :to_normal
          end
        end
    end

    resources :products
    root "products#index"
    
end
