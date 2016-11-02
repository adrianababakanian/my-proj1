Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons
  get '/', to: 'home#index'
  patch '/', to: 'pokemons#capture', as: 'capture'
  patch '/damage/:id', to: 'pokemons#damage', as: 'damage'
  get '/pokemons/new', to: 'pokemons#new', as: 'new'
  post 'create', to: 'pokemons#create', as: 'create'
  patch '/heal/:id', to: 'pokemons#heal', as: 'heal'

end
