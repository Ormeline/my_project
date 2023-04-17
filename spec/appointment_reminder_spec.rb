require "appointment_reminder"

RSpec.describe "appointment_reminder" do
    it "returns a name and a message that the person has an appoitnment at a set time and they must attend" do
        appointment_reminder_message = appointment_reminder("Lola", "10:30 am on Monday. You must attend!") do
        expect(appointment_reminder_message).to eq "Lola, you have an appointment at 10:30 am on Monday. You must attend!"
        end 
    end

    context "when no appointment time has been provided" do
        it "returns a message stating no appointment has been scheduled" do
            appointment_reminder_message = appointment_reminder("Lola", nil) 
            expect(appointment_reminder_message).to eq "Lola, you don't have an appointment scheduled."
        end
    end
end




