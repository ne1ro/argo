Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :production_categories, only: %i(index create update destroy)

  root to: 'high_voltage/pages#show', id: 'index'
end
