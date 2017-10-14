Rails.application.routes.draw do
root to: "artists#index"

resources :artists do
  resources :songs, only: [:create, :new]
end

resources :songs, except: [:create, :new]
end
