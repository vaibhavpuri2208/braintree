class PicturesController < ApplicationController
	def index
	@allpics = Picture.all
		


	end

	def form_input

	end

	def get_data
	p = Picture.new
	p.url = params[:url]
	p.title = params[:title]
	p.save
	redirect_to '/show'

	end



end