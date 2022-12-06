Rails.application.routes.draw do
  resources :vocabularies, only: [:index, :create, :destroy, :edit, :update, :show]
  root to: "vocabularies#index"
  devise_for :users
  resources :vocabularies do
    collection do
      get 'search'
    end
  end
end
