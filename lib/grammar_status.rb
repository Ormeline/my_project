class GrammarStats
  def initialize
    @good_sentences = 0
    @total_sentences = 0
  end

  def check(sentence)
    # check if the sentence begins with a capital letter and ends with a punctuation mark
    if /^[A-Z].+[.?!]$/.match?(sentence)
      @good_sentences += 1
      @total_sentences += 1
      true
    else
      @total_sentences += 1
      false
    end
  end

  def percentage_good
    if @total_sentences == 0
      0
    else
      (@good_sentences.to_f / @total_sentences * 100).round
    end
  end
end

sentence = GrammarStats.new

puts sentence.check("My holiday to Dubai was the best holiday ever.")
puts sentence.percentage_good # => 100

puts sentence.check("hi there!")
puts sentence.percentage_good # => 50

puts sentence.check("a friendship so great that it cannot be broken")
puts sentence.percentage_good # => 66

