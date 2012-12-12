require "sinatra"


get "/form" do
  erb :form
end

post '/form' do  
  "You said '#{params[:message]}'"  
end  
  
not_found do  
    status 404  
    'not found your page'  
end  