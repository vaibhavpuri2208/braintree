Mytube::Application.routes.draw do
  

get '/' => 'Videos#index', :as=> 'videos'
post '/'=> 'Videos#create'


get '/new' => 'Videos#new', :as => 'video_new'
get '/edit/:id' => 'Videos#edit', :as => 'edit_video'


get '/:id' => 'Videos#show', :as => 'video'


put '/:id' => 'Videos#update'
delete '/:id' => 'Videos#delete'




end
