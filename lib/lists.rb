class Lists
  def initialize
    @diary_list = []
    @todo_list = []
  end

  def add_diary(diary)
    @diary_list << diary
  end

  def add_task(todo)
    @todo_list << todo
  end

  def delete_diary(diary)
    @diary_list.delete(diary)
  end

  def delete_task(todo)
    @todo_list.delete(todo)
  end

  def all_list_of_diary_entries
    diary_list
  end

  def all_todos_list
    todo_list
  end

  def unfinished_todos_list
    @todo_list.reject(&:done?)
  end

  def sort_by_title
    (@diary_list + @todo_list).sort_by do |item|
      if item.is_a?(Todo_2)
        item.task
      else
        item.title
      end
    end
  end

  def sort_by_word_count
    (@diary_list.flat_map(&:entries) + @todo_list).sort_by do |item|
      if item && item.respond_to?(:word_count)
        -item.word_count
      else
        item&.task&.length || 0
      end
    end
  end
  
  def sort_by_unfinished_todos_first
    @todo_list.sort_by { |todo| todo.done? ? 1 : 0 } + @diary_list
  end

  private

  def diary_list
    @diary_list
  end

  def todo_list
    @todo_list
  end
end
