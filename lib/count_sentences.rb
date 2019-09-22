require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
  #  number_sentences = self.split(/[.?!]/)
  #  number_sentences.count
  self.split(/[.?!]/).count
 
  end
end