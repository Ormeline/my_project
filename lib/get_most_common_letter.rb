# Intended output:
# > get_most_common_letter("the roof, the roof, the roof is on fire!")
# "o"
def get_most_common_letter(text)
    counter = Hash.new(0)
    text.downcase.gsub(/[^a-z]/, '').chars.each do |char|
      counter[char] += 1
    end
    counter.max_by { |k, v| v }[0]
  end
  
# Call the function with an input string
puts get_most_common_letter("the roof, the roof, the roof is on fire!")
  
  
  
  