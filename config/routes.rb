Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :day_packs do
    resources :tasks, only: [:new, :create]
  end
  resources :tasks, except: [:new, :create]
end
