Rails.application.routes.draw do
  get 'mypages/index'
  root 'homes#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  
  resources :users do
    resources :mypages
  end


end
