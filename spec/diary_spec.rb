require "diary"

RSpec.describe "diary" do 
  describe "initialization" do
    it "should initialize a title and contents as a string" do
      set_diary = DiaryEntry.new("meeting", "activities")
      expect(set_diary.title).to eq "meeting"
      expect(set_diary.contents).to eq "activities"
    end
  end

  describe "count_words" do
    it "returns the number of words in the contents as an integer" do
      set_diary = DiaryEntry.new("meeting", "activities")
      set_diary_2 = DiaryEntry.new("meeting", "activities for the weekend")
      expect(set_diary.count_words).to eq 1
      expect(set_diary_2.count_words).to eq 4
    end
  end

  describe "reading_time" do
    it "returns an integer representing an estimate of the reading time in minute" do
      set_diary = DiaryEntry.new("meeting", "activities for the weekend")
      expect(set_diary.reading_time(60)).to eq 1
    end
  end

  describe "reading_chunk" do
    context "with a contents readable within the given minutes" do
      it "returns the full contents" do
        set_diary = DiaryEntry.new("meeting", "activities") 
        chunk = set_diary.reading_chunk(60, 1)
        expect(chunk).to eq "activities"
      end
    end

    context "with a contents unreadable within the time" do
      it "returns a readable chunk" do
        set_diary = DiaryEntry.new("meeting", "activities for the weekend")
        chunk = set_diary.reading_chunk(4, 1)
        expect(chunk).to eq "activities for the weekend"
      end
    end
  end
end
