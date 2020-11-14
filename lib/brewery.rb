class Brewery

    attr_accessor :name, :brewery_type, :city

    @@all = []

    def initialize(name, brewery_type, city)
        @name = name
        @brewery_type = brewery_type
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end


end