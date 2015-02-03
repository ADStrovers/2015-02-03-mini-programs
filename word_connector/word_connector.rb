require 'pry'

class WordConnector
  
  def initialize(*words)
    @words = words
  end
  
  def connect_words
    if @words.count == 2
      @words.join(" and ")
    elsif @words.count > 2
      num = @words.count
      words = ""
      x = 0
      while x < num - 1
        words.insert(-1, "#{@words[x]}, ")
        x += 1
      end
      words.insert(-1, "and #{@words[num - 1]}")
    else
      @words.join
    end
  end
      
end

binding.pry