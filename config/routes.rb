Rails.application.routes.draw do
  devise_for :users
  get 'landingpages/index'
  get 'landingpages/home'
  get 'landingpages/help'
  get 'landingpages/about'

    namespace :admin do
        resources :products
        resources :orders do
          post :cancel
          post :ship
          post :shipped
          post :return
        end
        resources :users
        resources :users do
          member do
            post :to_admin
            post :to_normal
          end
        end
    end

    namespace :account do
      resources :order
    end  

    resources :products
    resources :products do
      member do
      post :add_to_cart
     end
   end
    
    resources :orders do
      member do
        get :pay_with_credit_card
      end
    end
    
    root "products#index"
    
    resources :carts do 
      collection do
        post :checkout
        delete :clean
      end
    end
    
    resources :items, controller: "cart_items"
end
