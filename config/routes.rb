Rails.application.routes.draw do
  root "events#index"
  resources :events do 
    resources :registrations
    resources :likes
  end
  resources :users
  resource :session, only: [:new, :create, :destroy]
  get "signup" => "users#new"
end
