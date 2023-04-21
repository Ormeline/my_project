class Diary1
  def initialize(title, contents)
    @title = title
    @contents = contents
    @entries = []
    @todos = []
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def entries
    @entries
  end

  def todos
    @todos
  end

  def add_entry(entry)
    @entries << entry
    #puts "Entry added: #{entry.title}"
  end

  def read_entry(index)
    @entries[index]
  end

  def read_entries(duration, reading_speed)
    entries_to_read = []
    total_reading_time = 0

    @entries.each do |entry|
      reading_time = entry.word_count / reading_speed
      if (total_reading_time + reading_time) <= duration
        entries_to_read << entry
        total_reading_time += reading_time
      else
        break # stop iterating over entries
      end
      total_reading_time += reading_time
    end

    entries_to_read.reverse
  end

  def add_todo(todo)
    @todos << todo
  end

  def content_num_words
    @contents.split.size
  end

  def reading_time_calculator(reading_speed)
    total_reading_time = 0
    @entries.each do |entry|
      reading_time = entry.word_count / reading_speed.to_f
      total_reading_time += reading_time
    end

    total_reading_time
  end

  def activity_readable?(time_available)
    total_reading_time = reading_time_calculator(250)

    if total_reading_time <= time_available
      "You have #{(time_available - total_reading_time).round(2)} minutes left to read #{title}."
    else
      "Sorry, you don't have enough time to read #{title} in #{time_available} minutes."
    end
  end

  def mobile_numbers
    @entries.flat_map(&:contacts).map(&:mobile).compact
  end
end
