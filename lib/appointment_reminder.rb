def appointment_reminder(name, appointment_time)
    if appointment_time
        return "#{name}you have an appointment at #{appointment_time}. You must attend!"
    else 
        return "#{name} no appointment has been scheduled."
    end 
end

puts appointment_reminder("Lola", "10:30 am on Monday. You must attend!")
