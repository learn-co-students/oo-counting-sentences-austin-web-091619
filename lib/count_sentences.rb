require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    arr = split(/\.|\?|\!/)
    count = arr.length

    arr.each do |var|
      if var.eql? ""
        count -= 1
      end
    end
    
    count
  end

end