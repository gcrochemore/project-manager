Rails.application.routes.draw do
  resources :assignments, :deliveries, :task_statuses, :tasks, :project_bundles, :project_parts, :organizations, :task_types
  resources :projects do
      member do
        get :show_backlog
        get :show_assignments
      end
  end

  root 'home#index'
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, :path_prefix => 'my'
  resources :users
end
