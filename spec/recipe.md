 {{PROBLEM}} Method Design Recipe

 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.
As a user
So that I can keep track of my appointments
I want to keep a reminder of my upcoming appointments, taking into consideration the name and appointment time 

2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.
As a user
So that I can keep track of my appoitnments
I want to verify that a name and the time of appointment is recorded.

3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

appointment_reminder(name, appoitment_time) => ["name, time"]
appointment_time(name, nil) => throws in an error message

4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

