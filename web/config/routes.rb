Rails.application.routes.draw do
  resources :posts
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resource :authors
  resource :posts

  post "posts/:id/increment_like", to: 'posts#increment_like'
end
