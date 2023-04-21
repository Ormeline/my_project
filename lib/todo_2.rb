class Todo_2
  def initialize(task)
    @task = task
    @done = false
  end

  def task
    @task
  end

  def done
    @done
  end

  def mark_done!
    @done = true
  end

  def done?
    @done
  end
end
