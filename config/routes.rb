Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :portfolios, except: [:show]
 
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'portfolios/:id', to: 'portfolios#show'

  get 'angular-items', to: 'portfolios#angular'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do 
      get :toogle_status
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
end
