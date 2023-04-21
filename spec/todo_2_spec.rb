require "todo_2"

RSpec.describe Todo_2 do
  describe "mark_as_completed" do
    it "marks the todo as completed" do
      todo = Todo_2.new("Go shopping")
      expect(todo.completed).to eq false
      todo.mark_as_completed
      expect(todo.completed).to eq true
    end
  end
end