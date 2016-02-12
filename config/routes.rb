Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
      resources :cats, only: [:create, :show]
      resources :owners, only: [:create, :show]
  end
end
