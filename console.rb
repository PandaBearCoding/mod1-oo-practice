require 'pry'
require_relative "./app/models/patient.rb"

patient_array=[
    {name: madeline, age: "25"}
    {name: val, age: "29"}
    {name: alex, age: "35"}
    {name: anthony, age: "27"}
]

patient_array.each do |patient|
    Patient.new(patient[:nbame],patient[:age])
end

Patient.all

binding.pry 