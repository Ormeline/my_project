require "appointment_reminder"

RSpec.describe "appointment_reminder" do 
    it "returns a name and a message that an appointment has been scheduled at a set time and day" do
        appointment_reminder_message = appointment_reminder("Lola", "10:30 on Monday") do
        expect(appointment_reminder_message).to eq "Lola, you have an appointment at 10:am on Monday. You must attend!"
        end
    end
end



