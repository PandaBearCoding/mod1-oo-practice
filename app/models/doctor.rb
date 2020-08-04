require 'pry'

class Doctor
    attr_writer :specialty
    attr_accessor :name, :years

    def initialize(name, specialty, years=1)
        @name = name
        @specialty = specialty
        @years = years
    end 

    def say_name
        puts "Hi, my name is #{name}."
    end 

    def say_years
        puts "I have #{years} years in the medical field."
    end
end

# example invocation derek = Doctor.new("derek", "internal", 5)


#binding.pry