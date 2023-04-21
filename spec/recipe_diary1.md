 {{PROBLEM}} Multi-Class Design Recipe

 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can record my experiences
I want to keep a regular diary 

2. Design the Class Signature
# Include the name of the method, its parameters, return value, and side effects.
As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

class Diary
  def initialize(title, contents)
    @title = title
    @contents = contents
    @entries = []
    @todos = []
  end

  def add_entry(entry)
    # code to add an entry
  end

  def read_entry(index)
    # code to read an entry
  end

  def read_entries(duration, reading_speed)
    # code to select entries to read
  end

  def add_todo(todo)
    # code to add a todo
  end

  def mobile_numbers
    # code to extract mobile numbers from contacts
  end

3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

diary.read_entry(0) =>(DiaryEntry: @title=" ", @body=" ", @contacts=[])

diary.read_entries(10, 100) => (DiaryEntry:dkjbskbd @title="My first Diary Entry", @body="This is the body of my first diary entry.", @contacts=[], DiaryEntry:0x00007f @title="My Second Diary Entry", @body="This is the body of my second diary entry.")

todo1 = Todo_2.new("Go food shopping")
todo2 = Todo_2.new("Clean the house")
diary.add_todo(todo1)
diary.add_todo(todo2)

diary.todos => [Todo:0x00007 @task="Go food shopping", @completed=false>, Todo:0x0000 @task="Clean the house", @completed=false]

mobile_numbers
 @entries.flat_map(&:contacts).map(&:mobile).compact => ["07890987890", "07978987683", "07592882001"]

4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
