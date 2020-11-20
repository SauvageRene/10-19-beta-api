class Cli


    def start
        puts "Welcome BrewMasters to the Illinois brew finder "
        puts ""
        puts "Are you looking for some brew? Find your next visit here, type 'breweries'"
        puts ""
        puts "if you aren't looking for brew, how'd you even get here? type 'exit'"
        API.get_breweries
        menu
        puts ""
        self.another_brewery?
    end

    def menu
        input = gets.strip.downcase

        if input == "breweries"
            breweries_list
        elsif input == "exit"
            goodbye
        else 
            invalid_entry
        end
    end

    def breweries_list
        Brewery.all.each_with_index do |brewery, index|
            puts "#{index + 1}. #{brewery.name}"
        end
        puts ""
        puts ""
        puts "which brewery would you like details about:"
        input = gets.strip.downcase
        index = input_to_index(input)
        breweries_selection(index)
    end
    
    def breweries_selection(index)
        brewplace = Brewery.all[index]
        brewplace.each do |s|
            puts "Name: #{s.name}"
            puts "Brewery_type: #{s.brewery_type}"
            puts "Street: #{s.street}"
            puts "City: #{s.city}"
            puts "Website: #{s.website_url}"
            puts "Phone: #{s.phone}"

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
    
    def input_to_index(input)
        input.to_i - 1
    end

    def another_brewery?
        puts "Would you like details on another brewery?"
        puts "1. Yes"
        puts "2. No"
        input = gets.chomp
        index = input_to_index(input)

        if input == "1"
            breweries_list
        elsif input == "2"
            goodbye
        else
            puts "invalid entry, try again"
            another_brewery?
        end
    end


end
 
# cli = Cli.new
# cli.start