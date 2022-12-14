class GrammarStats
  def initialize
    @text_passed = []
  end

  def check(text) # text is a string
    # Returns true or false depending on whether the text begins with a capital letter 
    # and ends with a sentence-ending punctuation mark.
    # appropriate_sentence_ending = ".!?"
    # if text[0] == text[0].capitalize && text[-1] =~ /[.?!]/
    if text.empty? 
      raise "No text provided!" 
    end
  
    if text[0] =~ /[A-Z]/ && text[-1] =~ /[.?!]/
      return true
    else
      return false
    end

     @text_passed << text
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    return @text_passed.length
  end
end
# sentence = GrammarStats.new
# print sentence.check("Hello world!")
# print sentence.check("Hello world!")
# print sentence.check("Hello world!")
# print sentence.check("Hello world!")
# print sentence.check("Hello world!")
# print sentence.check("Hello world!")
