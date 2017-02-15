Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'

  resources :departments, only: [:index, :show]

  resources :projects, only: :show do
    resources :missions, only: [:new, :create, :edit, :update]
  end
end
