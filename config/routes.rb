Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: %i[new create]
    collection do
      get :top
    end
  end
  resources :reviews, only: %i[destroy]
end
