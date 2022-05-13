Rails.application.routes.draw do
  root to: 'api#breeds'
  get 'racas', to: 'novo#index'
  #post "/api/v1/clientes", to: 'api#create'
  resources :dogs
end
