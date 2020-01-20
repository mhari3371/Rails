  Rails.application.routes.draw do
  root "welcome#index"
  get 'profile' => 'welcome#profile'
  get 'login' => 'login#login'
  resources :posts
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
