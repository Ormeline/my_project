require "diary1"

RSpec.describe Diary1 do
  describe "#add_entry" do
    it "adds a new entry to the diary" do
      diary = Diary1.new("My Diary", "This is the contents of my diary")
      entry = double("Entry", title: "My First Entry")
      diary.add_entry(entry)
      expect(diary.entries).to include(entry)
    end
  end

  describe "#read_entry" do
    it "returns the correct entry based on the given index" do
      diary = Diary1.new("My Diary", "This is the contents of my diary")
      entry1 = double("Entry", title: "My First Entry")
      entry2 = double("Entry", title: "My Second Entry")
      diary.add_entry(entry1)
      diary.add_entry(entry2)
      expect(diary.read_entry(0)).to eq(entry1)
      expect(diary.read_entry(1)).to eq(entry2)
    end
  end

  describe "#read_entries" do
    it "returns the correct entries based on the given duration and reading speed" do
      diary = Diary1.new("My Diary", "This is the contents of my diary")
      entry1 = double("Entry", title: "My First Entry", word_count: 500)
      entry2 = double("Entry", title: "My Second Entry", word_count: 700)
      diary.add_entry(entry1)
      diary.add_entry(entry2)
      entries_to_read = diary.read_entries(20, 250)
      expect(entries_to_read).to match_array([entry1, entry2])
    end
  end

  describe "#add_todo" do
    it "adds a new todo to the diary" do
      diary = Diary1.new("My Diary", "This is the contents of my diary")
      todo = double("Todo", title: "My Todo")
      diary.add_todo(todo)
      expect(diary.todos).to include(todo)
    end
  end

  describe "#content_num_words" do
    it "returns the number of words in the diary contents" do
      diary = Diary1.new("My Diary", "This is the contents of my diary")
      expect(diary.content_num_words).to eq(7)
    end
  end

  describe "#activity_readable?" do
    it "returns the correct message based on the given time available" do
      diary = Diary1.new("My Diary", "This is the contents of my diary")
      entry1 = double("Entry", title: "My First Entry", word_count: 500)
      entry2 = double("Entry", title: "My Second Entry", word_count: 700)
      diary.add_entry(entry1)
      diary.add_entry(entry2)
      expect(diary.activity_readable?(20)).to eq("You have 15.2 minutes left to read My Diary.")
      expect(diary.activity_readable?(30)).to eq("You have 25.2 minutes left to read My Diary.")
    end
  end

  describe "#mobile_numbers" do
    it "returns an array of mobile numbers from all entries" do
      diary = Diary1.new("My Diary", "This is the contents of my diary")
      entry1 = double("Entry", title: "My First Entry", contacts: [double("Contact", mobile: "123-456-7890"), double("Contact", mobile: "234-567-8901")])
      entry2 = double("Entry", title: "My Second Entry", contacts: [double("Contact", mobile: "345-678-9012")])
      diary.add_entry(entry1)
      diary.add_entry(entry2)
      expect(diary.mobile_numbers).to eq(["07890987890", "07978987683", "07592882001"])
    end
  end
end
