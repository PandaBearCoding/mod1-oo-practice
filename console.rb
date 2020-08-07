require 'pry'
require relative "./app/models/doctor.rb"
require_relative "./app/models/patient.rb"

patient_array=[
    {name: madeline, age: "25"}
    {name: val, age: "29"}
    {name: alex, age: "35"}
    {name: anthony, age: "27"}
]

madeline = Patient.new("madeline", 25)
val = Patient.new("val", 29)
alex = Patient.new("alex", 35)
anthony = Patient.new("anthony", 27)

patient_array.each do |patient|
    Patient.new(patient[:name], patient[:age])
end

#Patient.all

#get each animal instance into it's own variable
#this will take the items at x index and save it to the according listed patient names

madeline, val, alex, anthony = Patient.all


#another way to create a patient --> how the patient knows about its doctor

madeline = Patient.new("madeline", "25", madeline)



binding.pry 