require "lists"

RSpec.describe 'Lists' do
  it 'checks for an empty list in the diary' do
    diary_list = Lists.new
    diary_list.all_list_of_diary_entries
    expect(diary_list.all_list_of_diary_entries).to eq []
  end

  it 'initially checks for an empty list of todos' do
    todo_list = Lists.new
    todo_list.all_todos_list
    expect(todo_list.all_todos_list).to eq []
  end
end