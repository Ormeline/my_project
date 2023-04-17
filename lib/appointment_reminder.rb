def appointment_reminder(name, appointment_time)
    if appointment_time 
      return "#{name} you have an appointment at #{appointment_time}. You must attend!"
    else 
      return "#{name}, you don't have an appointment scheduled."
    end 
  end 
  
    puts appointment_reminder("Lola", "2:30pm on Monday")
    puts appointment_reminder("Alex", nil)
