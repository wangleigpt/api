Rails.application.routes.draw do
  root 'home#docs'

  resources :submissions, only: [:index, :show, :create], param: :token
  resources :languages, only: [:index]
  resources :statuses, only: [:index]


  get 'system_info', to: 'application#system_info'
  get 'config_info', to: 'application#config_info'
  get 'workers', to: 'application#workers'

  post 'authenticate', to: 'application#authenticate'
  post 'authorize', to: 'application#authorize'
end
