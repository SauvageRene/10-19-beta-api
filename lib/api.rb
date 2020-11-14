
class API

    def fetch_breweries
        uri = URI("https://api.openbrewerydb.org/breweries")
        breweries = JSON.parse(Net::HTTP.get(uri))
        breweries["name"][1..15]

    end
end

api = API.new
