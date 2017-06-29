Rails.application.routes.draw do
  resources :portfolios
  get 'angular-items', to:'portfolio#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'pages/contact'

  resources :blogs do 
    member do 
      get :toggle_status
    end
  end

root to: 'pages#home'
end
