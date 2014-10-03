Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

  root to: "listings#index"

  resources :listings do
    resources :reviews
    resources :photos
  end
end
