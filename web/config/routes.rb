Rails.application.routes.draw do
  resources :posts
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :authors
  resource :posts

  post "posts/:id/increment_like", to: 'posts#increment_like'

  # TODO: make only admin can see sidekiq
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
end
