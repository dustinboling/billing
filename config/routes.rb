Billing::Application.routes.draw do
  resources :plans

  resources :cards

  resources :accounts

  get "pages/dashboard"
  get "pages/help"
  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  devise_scope :user do
    root 'pages#dashboard'
  end
end
