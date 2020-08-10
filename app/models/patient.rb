require 'pry'

class Patient
    attr_reader :impatience
    attr_accessor :name, :age
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @impatience = 0
        @@all << self
    end 

    def self.all 
        @@all
    end

    ## Will retrieve all relationships tracked
    ## Will go through the doctor_patient instance to find all appts

    def appointments
        DoctorPatient.all.select do |dp|
            dp.patient == self
        end 
    end

    ## Will use the doctor_patients array to get individual doctors 

    def doctors
        doctor_patients.map do |dp|
            dp.patient
        end
    end

    ## Create new relationship, but do not destroy prior

    def create_appointment(patient_instance)
        DoctorPatient.new(self, patient_instance)
    end 

    #def change_doctors (new_doctor)
        #self.doctor = new_doctor
    #end  

    ## @ Caryn feedback 2 says I cannot call a private method with self - do I need to change? I see on Google that with the new update to Ruby, we can call a private method with self 

    def inquire_appt_ready
        puts "The doctor will be ready soon."
        self.increase_impatience
    end 


    private 

    def increase_impatience
        @impatience += 1
    end 

end





## Example invocation madeline = Patient.new("madeline", 25)

binding.pry
