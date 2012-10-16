require 'open-uri'

class MapsController < ApplicationController

    def render_distance
    @response = open("http://maps.googleapis.com/maps/api/geocode/json?address=161+West+Schiller+Street,+Chicago,+IL&sensor=false").read
    @json_response = JSON.parse(@response)
    end
end