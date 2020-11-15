# IL brewfinder
the 10-19 Beta APi is actually IL Brewfinder. The brewfinder loads a database of breweries in IL giving you details and means of contacting the location

## Installation
- Ensure that you have [Ruby](https://www.ruby-lang.org/en/downloads/) installed properly
- Begin by cloning the repository and navigating to the download location
- Make sure that you have all necessary gems by running:
```
bundle install
```
## Starting the program
    Starting the application 
    '''
    ruby bin/start
    '''
### Using the Program
When prompted you'll receive the message 
'''
Welcome BrewMasters to the Illinois brew finder 

Are you looking for some brew? Find your next visit here, type 'breweries'

if you aren't looking for brew, how'd you even get here? type 'exit'
'''
- The application will respond if you type "breweries" or if you type "exit" 
any other entries will result in a message "invalid entry, try again"
- If breweries is typed you will get a list breweries in the IL area. 
- Type the name of the brewery you would like more information on the brewery
- a second prompt will appear at the bottom of the brewery information asking if you would like more details on another brewery.
- if you type another breweries name you will get that information as well. information includes name, street address, website, phone number, and the city the brewery is located in.


