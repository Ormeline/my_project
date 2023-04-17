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
      word_array = @contents.split(" ").length
    end
  
    def reading_time(wpm) 
     return (count_words / wpm.to_f).ceil
    end
  
    def reading_chunk(wpm, minutes)
      chunk_size = wpm * minutes
      chunk_list = words[0, chunk_size]
      return chunk_list.join(" ")
    end
    
    private

    def words
      return @contents.split(" ")
  end
end