require "pry"
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
   num = 0
   words = self.split(/[.?!]/)
   words.each do |sent|
   if sent == ""
      num += 1
   end
   
    end
    words.count - num
   end


end

