Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_out: "logout"}

<<<<<<< HEAD
  root to: "listings#index"

  resources :listings do
    resources :reviews
    resources :photos
=======
  resources :listings do
    resources :reviews
>>>>>>> a2f0fe000caa3a5440e4860c6d3f712e216d99eb
  end
end
