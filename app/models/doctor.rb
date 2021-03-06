require 'pry'

class Doctor
    attr_reader :specialty
    attr_accessor :name, :years
    @@all = []

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
        @@all << self
    end 

    def say_greeting 
        puts "It's so nice to see you. How are you feeling today?"
    end
    
    def self.find_by_specialty(specialty)
        self.all.filter do |doctor|
        doctor.specialty == specialty
        end
    end 

    #def patients
        #Patient.all.select do |patient|
            #patient.doctor = self
        #end
    #end

    #def discharge_patient(patient_name)
        #if Patient.all.name == patient_name && Patient.all.doctor == self
            #Patient.all.doctor = nil
        #end
    #end 

    #def transfer_patient(patient_name, new_doctor)
        #if Patient.all.name == patient_name && Patient.all.doctor == self
            #Patient.all.doctor = new_doctor
        #end 
    #end 

    def self.all
        @@all
    end

    ## Will retrieve all relationships tracked
    ## Will go through the doctor_patient instance to find all appts
    ## Then it will query patients through doctor_patient

    def doctor_patients
        DoctorPatient.all.select do |dp|
            dp.doctor == self
        end 
    end

    ## Will use the doctor_patients array to get individual patients 

    def appointments
        doctor_patients.map do |dp|
            dp.patient
        end
    end

    binding.pry
end


binding.pry