require 'pry'

class ParagraphTruncator
  
  def initialize(text)
    @text = text
    @trunc_text = ""
  end
  
  def truncate(size = 100, insert = "...")
    @trunc_text = @text.slice[size, @text.length] + insert
  end
    
end