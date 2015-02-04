require 'active_support'
require 'pry'

class PhoneNumberFormatter
  
  include ActiveSupport::NumberHelper
  
  def initialize
    @options = {}
  end
  
  def get_phone_number
    puts "Please enter a valid 7 or 10 digit phone number."
    phone_number = gets.chomp
    validate_length(phone_number)
  end
  
  def format
    get_phone_number
    puts number_to_phone(@phone_number, @options)
  end
  
  private
  
  def validate_length(string)
    if string.length != 10 && string.length != 7
      puts "I'm sorry, that phone number is not 10 digits long."
      get_phone_number
    else
      @phone_number = string
      if string.length == 10
        @options[:area_code] = true
      end
    end
  end
  
end

test = PhoneNumberFormatter.new

test.format