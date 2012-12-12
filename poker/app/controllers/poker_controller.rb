require 'open-uri'
require 'json'
require 'net/http'

class PokerController < ApplicationController

def dumb_poker_player

#while true

sleep 1


#gettting dataç

response = Net::HTTP.get_response("http://no-limit-code-em.com/sandbox/players/fc2455f8-1879-4ad4-8012-1f337c2869f2")
@get_response = JSON.parse(response)
puts @get_response


#posting data



http = Net::HTTP.new("no-limit-code-em.com")

request = Net::HTTP::Post.new("/sandbox/players/fc2455f8-1879-4ad4-8012-1f337c2869f2")
request.set_form_data({'action_name' => 'bet', 'amount' => '25'})
@postresponse = http.request(request)

puts @postresponse

#uri =URI.parse('http://')
#res = Net::HTTP.post_form(uri, 'action_name' => 'bet', 'amount' => '25')
#puts "WE ARE TESTING STUFF"
#puts res.body
#logger.info()

#end

end
end


#/action?action_name=bet&amount=25'


#http://no-limit-code-em.com/sandbox/players/728f53dd-a5dc-4582-8864-be37576b9592/action?action_name=bet&amount=25