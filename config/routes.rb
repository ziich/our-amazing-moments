Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
      namespace :v1 do
        resources :users, only: [ :index, :show ]
        resources :posts, only: [ :index, :show ]
      end
    end
end
