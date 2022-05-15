Rails.application.routes.draw do
  root to: 'novo#index'
  get 'show', to: 'novo#show'
  get 'busca', to: 'novo#index'
  #post "/api/v1/clientes", to: 'api#create'
  resources :dogs
end
