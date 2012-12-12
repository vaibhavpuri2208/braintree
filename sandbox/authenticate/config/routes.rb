Authenticate::Application.routes.draw do
  
  resources :tweetboxes

 devise_for :users

 resources :articles

 root :to => "articles#index"

end
