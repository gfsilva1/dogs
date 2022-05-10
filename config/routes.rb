Rails.application.routes.draw do
  root to: 'api#breeds'
  #post "/api/v1/clientes", to: 'api#create'
  resources :dogs
end
