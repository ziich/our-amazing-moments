Rails.application.routes.draw do

# /api/v1/user/login
  namespace :api, defaults: { format: :json } do
      namespace :v1 do


        resources :users

          post '/users/login', to: 'users#login'


        resources :posts, only: [ :index, :show, :create, :destroy ] do
          collection do
            get :for_current_user
          end
        resources :comments, only: [:index, :create]
      end
      resources :likes, only: [] do
        collection do
          post :like
          post :unlike
        end
      end
    end
  end
end
