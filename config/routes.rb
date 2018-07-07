Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :comments, only: [:index, :update, :create, :show]
      resources :votes, only: [:index, :update]
      resources :deals, only: [:index, :update, :show, :create]
      resources :users, only: [:index, :create, :update]
    end
  end

end
