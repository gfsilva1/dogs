Rails.application.routes.draw do
  root to: 'dogs#popular'
  get 'api', to: 'api#breeds'
  resources :dogs do
    collection do
      get :popular
    end
  end
end
