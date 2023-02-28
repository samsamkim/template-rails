Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'errors/internal_server_error'
  # Defines the root path route ("/")
  # root "articles#index"
  root "articles#index"
  get "/articles", to: "articles#index"
  
  # routing 404 and 500 errors to our custom error page.
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all

end
