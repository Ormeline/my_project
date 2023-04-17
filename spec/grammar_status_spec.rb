require "grammar_status"

RSpec.describe GrammarStats do
    describe "check" do
      it "checks whether a text begins with a capital letter" do
        sentence = GrammarStats.new
        expect(sentence.check("My holiday in Dubai was the best holiday ever!")).to eq true
      end
    end
  
    context "when a text does not begin with a capital letter" do
      it "returns false" do
        sentence = GrammarStats.new
        expect(sentence.check("hi there!")).to eq false
      end
    end
  
    context "when a sentence does not end with a punctuation, explanation or question mark" do
      it "returns false" do
        sentence = GrammarStats.new
        expect(sentence.check("hi there")).to eq false
      end
    end
  
    describe "percentage_good" do
      context "when no text has been checked" do
        it "returns 0" do 
          sentence = GrammarStats.new
          expect(sentence.percentage_good).to eq 0
        end
      end
  
      context "when texts have been checked and passed the grammar status check" do
        it "returns 100" do
          sentence = GrammarStats.new
          sentence.check("My holiday in Dubai was the best holiday ever!")
          expect(sentence.percentage_good).to eq 100
        end
      end

      context "when texts have been checked and failed the grammar status check" do
        it "returns the percentage" do
          sentence = GrammarStats.new
          sentence.check("My holiday in Dubai was the best holiday ever!")
          sentence.check("hi there!")
          expect(sentence.percentage_good).to eq 50
        end
      end
    end
  end
  