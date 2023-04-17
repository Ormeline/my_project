class DiaryEntry
    def initialize(title, contents)
    @title = title
    @contents = contents
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
      word_array = @contents.split(" ")
      word_array.count
    end
  
    def reading_time(wpm) 
      word_array = @contents.split(" ")
      
      wps = wpm / 60
      wps = wps * word_array.length
      wpm = wps / 60.to_f
      wpm.round(2)
    end
  
    def reading_chunk(wpm, minutes) # `wpm` is an integer representing the number
                                    # of words the user can read per minute
                                    # `minutes` is an integer representing the
                                    # number of minutes the user has to read
      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end
  end