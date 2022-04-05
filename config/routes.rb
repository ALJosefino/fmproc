Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
   root "lawsuits#index"
  # get "/lawsuit", to: "lawsuit#index"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lawsuit
end
