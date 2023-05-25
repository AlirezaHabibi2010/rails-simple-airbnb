Rails.application.routes.draw do
  root "flats#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :flats do
    collection do
      get :top
    end
  end
end
