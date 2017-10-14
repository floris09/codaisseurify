Rails.application.routes.draw do
root to: "artists#index"

resources :artists do
  resources :songs, except: [:destroy]
end

  resources :songs, except: [:destroy]
  delete "/songs/:id" => "songs#destroy", as: :destroy_song

end
