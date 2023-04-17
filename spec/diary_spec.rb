require "diary"

RSpec.describe "diary" do 
    it "should initialize a tile and contents as a string" do
      set_diary = DiaryEntry.new("meeting", "activities")
      expect(set_diary.title).to eq "meeting"
      expect(set_diary.contents).to eq "activities"
    end

    it 'Returns the number of words in the contents as an integer' do
      set_diary = DiaryEntry.new("meeting", "activities")
      set_diary_2 = DiaryEntry.new("meeting", "activities for the weekend")

      expect(set_diary.count_words).to eq 1
      expect(set_diary_2.count_words).to eq 4
    end

    it 'Returns an integer representing an estimate of the reading time in minute' do
      set_diary = DiaryEntry.new("meeting", "activities for the weekend")
      
      expect(set_diary.reading_time(60)).to eq 0.07
    end
end 
