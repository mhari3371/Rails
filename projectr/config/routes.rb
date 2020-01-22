Rails.application.routes.draw do
  resources :tweets do
    member do
      put "like" => "tweets#like"
      put "dislike" => "tweets#dislike"
    end
  end
  root "users#index"
  get 'users/new'
  post '/users' => 'users#create'
  post '/session' => 'session#create'
  get 'logout' => 'session#signout'
  get 'users/show'
  get 'users/login'
  get 'users/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
