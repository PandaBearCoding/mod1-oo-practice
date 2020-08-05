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

    def inquire_appt_ready
        puts "The doctor will be ready soon."
        self.increase_impatience
    end 

    # I had this yesterday included in my code, it seems repetitve / unnecessary
    #def say_name
        #puts "Hi, my name is #{name}."
    #end 

    #def say_age
        #puts "I am #{age} years old."
    #end

    private 

    def increase_impatience
        @impatience += 1
    end 

end


#example invocation madeline = Patient.new("madeline", 25)

binding.pry
