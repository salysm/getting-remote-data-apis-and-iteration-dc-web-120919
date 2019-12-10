require 'rest-client'
require 'json'
require 'pry'

def get_json(url)
  #make the web request
  response_string = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(response_string)
  response_hash
end


def get_character_movies_from_api(character_name)
  response_hash = get_json('http://www.swapi.co/api/people/')
  response_hash["results"].each do |character|
    if character["name"].downcase == character_name.downcase 
      character_movies = character["films"]
      
      return character_movies.collect do |url| 
      #make get request to url using restClient 
        response = RestClient.get(url) 
        parsed_response = JSON.parse(response)
        parsed_response["title"]
      #parse into hash
       
        #get title
      end
   
    end
  end
end




# def character(string)
#   response_hash = get_json('http://www.swapi.co/api/people/')
#   response_hash["results"]
  #character_name = character_database.select do |character|
 
#films = response_hash["results"].map
  
  # iterate over the response hash to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.


def print_movies(films)
  puts films 
  # some iteration magic and puts out the movies in a nice list
end
 

def show_character_movies(character)
  films = get_character_movies_from_api(character)
  
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
