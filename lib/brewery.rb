
class Brewery

    attr_accessor :name, :brewery_type, :city, :website_url, :phone, :street

    @@all = []
    @@brewery_type = []
    @@city = []

    def initialize(attr_hash)
       attr_hash.each do |k, v |
        self.send("#{k}=", v) if self.respond_to?("#{k}=")
       end
       save
    end

    def save
        @@all << self
    end

    def create_lists
    end

    def self.all
        @@all
    end
    
    def self.find_by_name(name)
        self.all.select do |brewery|
            brewery.name.downcase == name
        end
    end


end