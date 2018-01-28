Rails.application.routes.draw do
  resources :assignments, :deliveries, :task_statuses, :tasks, :project_bundles, :project_parts, :projects,
    :organizations, :task_types
  root 'home#index'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :path_prefix => 'my'
  resources :users
end
