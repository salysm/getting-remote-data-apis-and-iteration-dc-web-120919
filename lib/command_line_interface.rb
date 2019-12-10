def welcome
  system "clear"
  puts "Welcome to the Star Wars Database"
end

def get_character_from_user
  puts "please enter a character name"
  a_character = gets.chomp
return a_character
end
