require "todo"

RSpec.describe Todo do
    it "constructs" do
        todo_list = Todo.new("Shopping")
        expect(todo_task).to eq "Shopping"
    end

    context "when todo is done" do
        it "returns true" do
            todo = Todo.new(Shopping)
            todo.mark_done!
            expect(todo.task).to eq true
        end
    end

    context "when todo is not done" do
        it "returns false" do
            todo = Todo.new("shopping")
            expect(todo.done?).to eq false
        end
    end
end