Rails.application.routes.draw do
  root 'start#index'
  resources :participants, only: [:index, :show]
end
