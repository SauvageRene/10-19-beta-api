require 'pry'
class API
    

    def self.get_breweries
        response = RestClient.get("https://api.openbrewerydb.org/breweries?by_state=Illinois")
        breweries_array = JSON.parse(response)
        breweries_array.each do |brewery|
            Brewery.new(brewery)
            binding.pry
        end
    end

end

#api = API.new
