class TodoList
    def initialize
        @todo_list = []
    end
  
    def add(todo) # todo is an instance of Todo
      # Returns nothing
      @todo_list << todo
    end
  
    def incomplete
      # Returns all non-done todos
      incomplete_todos = @todo_list.select do 
        |todo| todo.done? != true
      end
        return incomplete_todos
    end
  
    def complete
      # Returns all complete todos
      complete_todos = @todo_list.select do |todo|
        todo.done? == true
      end
      return complete_todos
    end

    def give_up!
      # Marks all todos as complete
      @todo_list.map do |todo|
        todo.mark_done!
      end
    end
end
 