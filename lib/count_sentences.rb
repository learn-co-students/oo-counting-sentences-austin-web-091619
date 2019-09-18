require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end

  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    sentence_array = self.split(/[.!?]/)
    words = self.split()
    sentences = words.select do |str| 
       str.sentence? || str.question? || str.exclamation?
      
    end

    sentence_count = sentences.count

    #binding.pry

    sentence_count
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences