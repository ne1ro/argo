Rails.application.routes.draw do
  devise_for :users, skip: %i(registrations)

  root to: 'high_voltage/pages#show', id: 'index'
end
