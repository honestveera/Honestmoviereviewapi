Rails.application.routes.draw do
  resources :reviews
  resources :movies
  devise_for :users

  namespace :api do
    namespace :v1 do
      resources :movies do
         collection do
           get "highestrating"
          end
        resources :reviews do
          collection do
             get "average"
          end
        end
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'movies#index'
end
