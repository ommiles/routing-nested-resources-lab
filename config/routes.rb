Rails.application.routes.draw do
  # resources :artists
  # resources :songs

  root 'songs#index'
  resources :artists, only: [:index, :show] do
    # nested resource for songs
    resources :songs, only: [:index, :show]
  end

  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
end
