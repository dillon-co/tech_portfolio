Rails.application.routes.draw do
  resources :service_requests
  resources :services
  devise_for :clients
  get 'pages/home'

  get 'dashboard' => 'pages#dashboard', as: 'dashboard'

  get 'pages/projects'

  get 'pages/discussion'

  get 'pages/about'

  devise_for :admins

  root to: 'pages#home'

  post "pages/accept_project", as: "accept_project"
  post "pages/decline_project", as: "decline_project"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
