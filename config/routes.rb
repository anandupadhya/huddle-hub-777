Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects do
    resources :collaborations
    resources :project_updates
  end
end
