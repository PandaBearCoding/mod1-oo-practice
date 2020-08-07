require 'pry'

class Patient
    attr_reader :impatience
    attr_accessor :name, :age, :doctor
    @@all = []

    def initialize(name, age, doctor=nil)
        @name = name
        @age = age
        @impatience = 0
        @doctor = doctor
        @@all << self
    end 

    def change_doctors (new_doctor)
        self.doctor = new_doctor
    end  

    def self.all 
        @@all
    end

    # @ Caryn feedback 2 says I cannot call a private method with self - do I need to change? I see on Google that with the new update to Ruby, we can call a private method with self 

    def inquire_appt_ready
        puts "The doctor will be ready soon."
        self.increase_impatience
    end 


    private 

    def increase_impatience
        @impatience += 1
    end 

end


#example invocation madeline = Patient.new("madeline", 25)

binding.pry
