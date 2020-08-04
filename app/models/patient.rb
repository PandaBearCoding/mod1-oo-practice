require 'pry'

class Patient
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end 

    def say_name
        puts "Hi, my name is #{name}."
    end 

    def say_age
        puts "I am #{age} years old."
    end
end


madeline = Patient.new("madeline", 25)

binding.pry
