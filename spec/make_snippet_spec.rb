require 'make_snippet'

RSpec.describe 'make_snippet' do
    it "takes input and returns first five words followed by ellipsis" do
        result = make_snippet("I am learning Ruby. It is very fun")
        expect(result).to eq "I am learning Ruby. It"
    end

    it "takes no string and returns 'nothing was input'" do
        result = make_snippet("")
        expect(result).to eq ""
    end

    it "takes a sentence with 5 or less words and outputs the same sentence" do
        result = make_snippet("hello")
        expect(result).to eq "hello"  
    end
end 