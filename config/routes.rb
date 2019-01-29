Rails.application.routes.draw do
  get "users", to: "users#index"
  resources :candidates do
    member do
      post :vote
    end
  end
end
