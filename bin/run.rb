#!/usr/bin/env ruby


require_relative "../lib/api_communicator.rb"
require_relative "../lib/command_line_interface.rb"


response_string = RestClient.get('http://www.swapi.co/api/people/')
response_hash = JSON.parse(response_string)

welcome
character = get_character_from_user
show_character_movies(character)
