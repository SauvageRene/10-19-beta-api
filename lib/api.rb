require 'pry'
require_relative "../environment"
require 'brewery.rb'


class API

    attr_accessor :name 

    def fetch_breweries
        uri = URI("https://api.openbrewerydb.org/breweries")
        response = Net::HTTP.get(uri)
        hash = JSON.parse(response)
        binding.pry

    end
end

#api = API.new
