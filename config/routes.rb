Rails.application.routes.draw do

  resources :restaurants do
    collection do
    end
    member do
      get :reviews
    end
    resources :reviews, only: [:new, :create]
  end

  get "up" => "rails/health#show", as: :rails_health_check

end
