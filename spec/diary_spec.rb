require "diary"

RSpec.describe "diary" do 
    it "should initialize a tile and contents as a string" do
    set_diary = DiaryEntry.new("meeting", "activities")
    expect(set_diary.title).to eq "meeting"
    expect(set_diary.contents).to eq "activities"
    end
end 
