Rails.application.routes.draw do
  get 'errors/internal_server_error'
  root "articles#index"
  get "/articles", to: "articles#index"
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
