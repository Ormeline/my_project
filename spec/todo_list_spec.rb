require "todo_list"

RSpec.describe TodoList do
    context "initially incomplete list" do
        it "returns an empty string" do
            todo_list = TodoList.new
            expect(todo_list.complete).to eq nil
        end

        context "initially complete list" do
            it "will be empty" do
                todo_list = TodoList.new
                expect(todo_list.incomplete).to eq nil
            end
        end
    end
end