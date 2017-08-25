Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  
  resources :contacts, only: [:index, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'
  
  get 'startup_faq', to: 'static#startup_faq', as: 'startup_faq'
  get 'documents', to: 'static#documents', as: 'documents'
  get 'pool_spa_help', to: 'static#pool_spa_help', as: 'pool_spa_help'
  # get 'tutorial/:tutorial', to: 'static#tutorial', as: 'tutorial'
  get 'pool_tutorial', to: 'static#pool_tutorial', as: 'pool_tutorial'
  get 'spa_tutorial', to: 'static#spa_tutorial', as: 'spa_tutorial'
  get 'commercial_tutorial', to: 'static#commercial_tutorial', as: 'commercial_tutorial'
  
  
  
end
