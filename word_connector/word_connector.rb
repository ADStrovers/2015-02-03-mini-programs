require 'pry'
require 'active_support'
require 'active_support/core_ext/array/conversions'

class WordConnector
  
  def connect_array(*words)
    words.to_sentence
  end
      
end

binding.pry