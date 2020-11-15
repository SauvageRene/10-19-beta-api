class Cli

    attr_accessor


    def start
        puts "Welcome BrewMasters "
        puts "Are you looking for some brew? Find your next visit, enter 'breweries'"
        puts "if you aren't looking for brew, enter 'exit'"
        API.get_breweries
        menu
    end

    def menu
        input = gets.strip.downcase

        if input == "list"
            puts "list"
        elsif input == "exit"
            goodbye
        else 
            invalid_entry
        end
    end

    def breweries_list
        Brewery.all.each_with_index(1) do |brewery, index|
            puts "#{index + 1}. #{brewery.name}"
        end
        
        puts "which brewery would you like details about:"
        input = gets.strip.capitalize

        breweries_selection(input)
    end
    
    def breweries_selection(brewery)
        brewplace = Brewery.find_by_name(brewery)
        brewplace.each do |s|
            puts "Name: #{s.name}"
            puts "Brewery_type: #{s.brewery_type}"
            puts "City: #{s.city}"
        end
    end

        #go over my brewery array, find method to find the brewery

    def invalid_entry
        puts "invalid entry, try again"
            menu
    end

    def goodbye
        puts "I've been told I make a very good brew, Goodbye"
    end


end

cli = Cli.new
cli.start