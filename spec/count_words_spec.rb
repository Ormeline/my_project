require 'count_words'

RSpec.describe "count_words" do
    it "takes the string 'hello world' and returns the word count" do
        expect(count_words("hello world")).to eq 2
    end

    it "takes an emply string and returns nil" do
        expect(count_words("")).to eq 0
    end 

    it "takes an interger and returns an error" do
        expect { count_words(6) }.to raise_error 
    end
end