Rails.application.routes.draw do
  root to: 'home#index'

  devise_scope :user do
    get "/users/sign_out", to: "devise/sessions#destroy"
  end

  devise_for :users

  resources :items
end
