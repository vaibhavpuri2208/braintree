class VideosController < ApplicationController

def index
end

def create
Videodb.create(params[:videodb])
render 'index'
end

def update
@mytube = Videodb.find_by_id(params[:id])
@mytube.update_attributes(params[:videodb])
render 'index'
end 

def new
@mytube = Videodb.new

end


def delete
@mytube = Videodb.find_by_id(params[:id])
@mytube.destroy
render 'index'

end


def edit

@mytube = Videodb.find_by_id(params[:id])


end



end
