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

    def self.find_by_specialty(specialty)
        self.all.filter do |doctor|
        doctor.specialty == specialty
    end 
end  

    def self.all
        @@all
    end

    def say_name
        puts "Hi, my name is #{name}."
    end 

    def say_greeting 
        puts "It's so nice to see you. How are you feeling today?"
    end

    def say_years
        puts "I have #{years} years in the medical field."
    end

end

# example invocation derek = Doctor.new("derek", "internal", 5)

binding.pry