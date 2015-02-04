require 'pry'
require 'active_support'
require 'active_support/core_ext/string/filters'

class ParagraphTruncator
  
  def initialize(text)
    @text = text
    @trunc_text = ""
  end
  
  def truncate_text(size = 100)
    @trunc_text = @text.truncate(size)
  end
    
end

binding.pry