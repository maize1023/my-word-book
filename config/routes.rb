Rails.application.routes.draw do
  root to: "vocabularies#index"
  devise_for :users
end
