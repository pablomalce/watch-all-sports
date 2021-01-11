Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'index', to: 'esports#index', as: :esport
  resources :events, only: %i[index create destroy]
  get 'users/:id', to: 'users#show', as: :user
end

