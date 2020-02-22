Rails.application.routes.draw do
  root 'jobs#index'
  resources :jobs, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :statuses, only: [:show]
end