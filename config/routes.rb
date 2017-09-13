Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :destroy]
      resources :decks, only: [:index, :create, :destroy]
      resources :cards, only: [:index, :create, :destroy]
      post '/cards/:id', to: 'cards#delete'
    end
  end
end
