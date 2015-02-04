require 'pry'
require 'marvelite'

class MarvelSearch
  
  def initialize
    @client = Marvelite::API::Client.new( :public_key => 'b3ff228c38590392734ea1d8cf74c94e', :private_key => '6d1ec8f578d70e0aa8dd6fdfcf2b831116fb987a')
  end

  def search_for_character
    puts "Which Marvel character would you like to search for?"
    char = gets.chomp
    @client.character(char)
  end
    
end

binding.pry