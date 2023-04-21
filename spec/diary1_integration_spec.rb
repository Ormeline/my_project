require "spec_helper"
require "diary1"
require "lists"
require "todo_2"

RSpec.describe "Diary and Todo" do
  describe "adding entries and todos" do
    it "allows adding entries and todos to a diary, and lists them correctly" do
      diary1 = Diary1.new("My Diary", "This is the contents of my diary")
      entry1 = double("Entry", title: "My First Entry", word_count: 500, contacts: [double("Contact", mobile: "123-456-7890"), double("Contact", mobile: "234-567-8901")])
      entry2 = double("Entry", title: "My Second Entry", word_count: 700, contacts: [double("Contact", mobile: "345-678-9012")])
      diary1.add_entry(entry1)
      diary1.add_entry(entry2)

      todo1 = Todo_2.new("Shopping for home furniture")
      todo2 = Todo_2.new("Cook dinner for the family")
      todo1.mark_done!

      list = Lists.new
      list.add_diary(diary1)
      list.add_task(todo1)
      list.add_task(todo2)

      expect(list.all_list_of_diary_entries).to eq([diary1])
      expect(list.all_todos_list).to eq([todo1, todo2])
      expect(list.unfinished_todos_list).to eq([todo2])
    end
  end

  describe "deleting entries and todos" do
    it "allows deleting entries and todos from a diary and list, and updates the lists correctly" do
      diary1 = Diary1.new("My Diary", "This is the contents of my diary")
      entry1 = double("Entry", title: "My First Entry", word_count: 500, contacts: [double("Contact", mobile: "07989340900"), double("Contact", mobile: "07487909912")])
      entry2 = double("Entry", title: "My Second Entry", word_count: 700, contacts: [double("Contact", mobile: "0787638889")])
      diary1.add_entry(entry1)
      diary1.add_entry(entry2)

      todo1 = Todo_2.new("Shopping for home furniture")
      todo2 = Todo_2.new("Cook dinner for the family")
      todo1.mark_done!

      list = Lists.new
      list.add_diary(diary1)
      list.add_task(todo1)
      list.add_task(todo2)

      list.delete_diary(diary1)
      list.delete_task(todo1)

      expect(list.all_list_of_diary_entries).to eq([])
      expect(list.all_todos_list).to eq([todo2])
      expect(list.unfinished_todos_list).to eq([todo2])
    end
  end

  describe "ordering entries and todos" do
    it "allows ordering entries and todos by various criteria" do
      diary1 = Diary1.new("My Diary", "This is the contents of my diary")
      entry1 = double("Entry", title: "My First Entry", word_count: 500, contacts: [double("Contact", mobile: "123-456-7890"), double("Contact", mobile: "234-567-8901")])
      entry2 = double("Entry", title: "My Second Entry", word_count: 700, contacts: [double("Contact", mobile: "345-678-9012")])
      diary1.add_entry(entry1)
      diary1.add_entry(entry2)
  
      todo1 = Todo_2.new("Shopping for home furniture")
      todo2 = Todo_2.new("Cook dinner for the family")
      todo1.mark_done!
  
      list = Lists.new
      list.add_diary(diary1)
      list.add_task(todo1)
      list.add_task(todo2)
  
      sorted_by_title = list.sort_by_title
      sorted_by_word_count = list.sort_by_word_count
      sorted_by_unfinished_todos_first = list.sort_by_unfinished_todos_first
  
      expect(sorted_by_title).to eq([todo2, diary1, todo1])
      expect(sorted_by_word_count).to eq([entry2, entry1, todo2, todo1])
      expect(sorted_by_unfinished_todos_first).to eq([todo2, todo1, diary1])
    end
  end
  
end
