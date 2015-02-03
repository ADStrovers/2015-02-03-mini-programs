require 'pry'

class PhoneNumberFormatter

  def initialize
    get_phone_number
  end
  
  def get_phone_number
    puts "Please enter a valid 10 digit phone number."
    phone_number = gets.chomp
    validate_length(phone_number)
  end
  
  def format_byteslice
    puts "(#{@phone_number.byteslice(0, 3)}) #{@phone_number.byteslice(3, 3)}-#{@phone_number.byteslice(6, 4)}"
  end
  
  def format_array
    pn_array = @phone_number.split(//)
    pn_array.insert(6, "-").insert(3, ") ").insert(0, "(")
    puts pn_array.join
  end
  
  private
  
  def validate_length(string)
    if string.length != 10
      puts "I'm sorry, that phone number is not 10 digits long."
      get_phone_number
    else
      @phone_number = string
    end
  end
  
end

test = PhoneNumberFormatter.new
test.format_byteslice
test.format_array