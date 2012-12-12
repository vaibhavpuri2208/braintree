require 'open-uri'
require 'json'


class TserverController < ApplicationController



def talk
response = open(http://no-limit-code-em.com/api/players/46e6b984-7166-4dd8-a763-52408278a852).read
@json_response = JSON.parse(response)
end
