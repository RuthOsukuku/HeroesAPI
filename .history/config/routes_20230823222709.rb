Rails.application.routes.draw do
  resources :heroes, only: [:index, :show]
  resources :powers, only: [:index, :show]
  post '/hero_powers', to: 'hero_powers#create'
end
