Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
      namespace :v1 do
        resources :posts, only: [ :index, :show, :create, :destroy ]
        resources :users, only: [ :index, :show, :create, :destroy]
      end
    end
end
