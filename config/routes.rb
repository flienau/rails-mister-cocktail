Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Attachinary::Engine => "/attachinary"

  resources :cocktails do
    resources :doses
  end


end


# resources :doses, only: [:new, :create]
