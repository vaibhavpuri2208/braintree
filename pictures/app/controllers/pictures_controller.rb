require 'open-uri'
class PicturesController < ApplicationController

	def show
		#@pic=[]
		x = params[:id].to_i
		@pic = student_data(x-1)
	end

	def student_data(y)
		json_parse = JSON.parse(open("http://codemountain.com/api/students/am.json").read)
		@sName = json_parse[y]["student"]["name"]
		@sAvatar = json_parse[y]["student"]["avatar_url"] 
		#return {:name => sName, :avatar => sAvatar}
	end

	def scroll()
        y=rand(1...25)
		json_parse = JSON.parse(open("http://codemountain.com/api/students/am.json").read)
		@sName = json_parse[y]["student"]["name"]
		@sAvatar = json_parse[y]["student"]["avatar_url"]
		#return {:name => sName, :avatar => sAvatar}
	end



end