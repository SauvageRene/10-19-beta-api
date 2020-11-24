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
        #self.another_brewery?
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
        ask_user_input
    end

    def ask_user_input
        puts ""
        puts "which brewery would you like details about:"
        input = gets.strip.downcase
        index = input_to_index(input)
        #Checking if user types a number between 1-20 
        if index.between?(0,Brewery.all.size-1) #0..19
            display_breweries_selection(index)
        else
            puts "Invalid Entry"
            ask_user_input
        end

    end
    
    def display_breweries_selection(index)
        # Choose a brewery represented by the number 
        brewplace = Brewery.all[index]

        puts "Name: #{brewplace.name}"
        puts "Brewery_type: #{brewplace.brewery_type}"
        puts "Street: #{brewplace.street}"
        puts "City: #{brewplace.city}"
        puts "Website: #{brewplace.website_url}"
        puts "Phone: #{brewplace.phone}"
        another_brewery?
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