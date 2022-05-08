Rails.application.routes.draw do
  root to: 'api#breeds'
  resources :dogs
end
