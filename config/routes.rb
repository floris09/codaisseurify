Rails.application.routes.draw do
root to: "artists#index"

resources :artists do
  resources :songs
end

  get     "/artists_az"  => "artists#index_az", as: :artists_az
  get     "/artists_za"  => "artists#index_za", as: :artists_za
  get     "/artists_created_asc" => "artists#index_created_asc", as: :artists_created_asc
  get     "/artists_created_desc" => "artists#index_created_desc", as: :artists_created_desc
end
