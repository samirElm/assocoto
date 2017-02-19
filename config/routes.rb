Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :departments, only: [:index, :show]

  resources :projects, only: :show do
    resources :missions, only: [:show, :new, :create, :edit, :update] do
      resources :milestones, only: [:new, :create, :edit, :update]
      resources :reports,    only: [:new, :create, :edit, :update]
    end
  end
end
