Rails.application.routes.draw do
  root to: 'dogs#popular'
  get 'api', to: 'api#api'
  resources :dogs do
    collection do
      get :popular
    end
  end
end
