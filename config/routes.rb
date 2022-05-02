Rails.application.routes.draw do
  root to: 'dogs#popular'
  resources :dogs do
    collection do
      get :popular
      get :api
    end
  end
end
