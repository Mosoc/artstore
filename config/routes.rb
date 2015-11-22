Rails.application.routes.draw do
  get 'landingpages/index'
  get 'landingpages/home'

  get 'landingpages/help'

  get 'landingpages/about'

    namespace :admin do
        resources :products
    end

    root 'landingpages#index'
end
