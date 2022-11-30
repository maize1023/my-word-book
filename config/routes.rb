Rails.application.routes.draw do
  resources :vocabularies
  root to: "vocabularies#index"
  devise_for :users
end
