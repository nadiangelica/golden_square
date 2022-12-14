require 'GrammarStats'

RSpec.describe GrammarStats do
  it 'text to returns fakse if text does not start with a capital letter' do
    sentence = GrammarStats.new
    result = sentence.check("hello world")
    expect(result).to eq false
  end

  it 'checks if text starts with a capital letter and ends with appropriate sentence-ending punctuation mark' do
    sentence = GrammarStats.new
    result = sentence.check("Hello world!")
    expect(result). to eq true
  end

  it "fails" do
    sentence = GrammarStats.new
    expect{sentence.check("")}. to raise_error "No text provided!"
end

  context "Testing percentage_good method" do
    it "returns an integer" do
      sentence = GrammarStats.new
      sentence.check("One two three. " * 5 + "one two three. " * 5 )
      result = sentence.percentage_good
      expect(result). to eq 5 
    end

    # it "returns an integer when two checks added" do
    #   sentence = GrammarStats.new
    #   sentence.check("One two three.")
    #   sentence.check("Four five six?")
    #   result = sentence.percentage_good
    #   expect(result). to eq 2
    # end

  end
end
