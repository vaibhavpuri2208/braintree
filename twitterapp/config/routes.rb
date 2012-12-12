Twitterapp::Application.routes.draw do
  
  root :to => "tweetboxes#index"
  match "/auth/:provider/callback" => "sessions#create"
  resources :tweetboxes
  match "/signout" => "sessions#destroy", :as => :signout

end
