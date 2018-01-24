Rails.application.routes.draw do
  resources :tasks, :project_bundles, :project_parts, :projects, :organizations
  root 'home#index'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
end
