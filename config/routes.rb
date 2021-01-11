Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :esports, only: %i[index]
  resources :events, only: %i[index show create destroy]
  get 'users/:id', to: 'users#show', as: :user
end

