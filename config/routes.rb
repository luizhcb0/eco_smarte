Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: "users/registrations"
  }
  
  resources :contacts, only: [:index, :create]
  resources :warranty, only: [:index, :create]
  resources :users, only: [:index, :edit, :update, :destroy, :show]
  resources :pools
  resources :waters

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static#index'
  
  get 'startup_faq', to: 'static#startup_faq', as: 'startup_faq'
  get 'documents', to: 'static#documents', as: 'documents'
  get 'pool_spa_help', to: 'static#pool_spa_help', as: 'pool_spa_help'
  # get 'tutorial/:tutorial', to: 'static#tutorial', as: 'tutorial'
  get 'pool_tutorial', to: 'static#pool_tutorial', as: 'pool_tutorial'
  get 'spa_tutorial', to: 'static#spa_tutorial', as: 'spa_tutorial'
  get 'commercial_tutorial', to: 'static#commercial_tutorial', as: 'commercial_tutorial'
  get 'basics_partials', to: 'static#basics_partials', as: 'basics_partials'
  get 'ecosmarte_university', to: 'static#ecosmarte_university', as: 'ecosmarte_university'
  get 'ecosmarte_basics', to: 'static#ecosmarte_basics', as: 'ecosmarte_basics'
  get 'quiz/:quiz_number', to: 'static#quiz', as: 'quiz'
  post 'quiz_answer', to: 'static#quiz_answer', as: 'quiz_answer'
  
  get 'password_edit/:id', to: 'users#password_edit', as: 'password_edit'
  patch 'password_update/:id', to: 'users#password_update', as: 'password_update'
  
  get 'user_profile', to: 'users#user_profile', as: 'user_profile'
  get 'user_profile_edit', to: 'users#user_profile_edit', as: 'user_profile_edit'
  patch 'user_profile_update', to: 'users#user_profile_update', as: 'user_profile_update'
  get 'user_password_edit', to: 'users#user_password_edit', as: 'user_password_edit'
  patch 'user_password_update', to: 'users#user_password_update', as: 'user_password_update'
  
  get 'user_pools', to: 'pools#user_pools', as: 'user_pools'
  get 'add_pool', to: 'pools#add_pool', as: 'add_pool'
  get 'admin_edit_pool/:pool_id', to: 'pools#admin_edit_pool', as: 'admin_edit_pool'
  
  get 'new_water_measurement/:pool_id', to: 'waters#new_water_measurement', as: 'new_water_measurement'
  get 'user_water_measurements', to: 'waters#user_water_measurements', as: 'user_water_measurements'
  get 'pool_water_measurements/:pool_id', to: 'waters#pool_water_measurements', as: 'pool_water_measurements'
  
  get 'international', to: 'static#international', as: 'international'
  post 'international_mail', to: 'static#international_mail', as: 'international_mail'
  get 'ecosmarte__wifi', to: 'static#ecosmarte_wifi', as: 'ecosmarte_wifi'
  get 'privacy_policy', to: 'static#privacy_policy', as: 'privacy_policy'
  
end
