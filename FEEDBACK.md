# Part One - Intro to OO
Classes look good! I was glad to see the additions you made of the examples in comments and the additional methods. We'll get into creating more methods in the rest of the week and it's good to practice thinking of method you'd want in your classes and creating them on your own. Feel free to go beyond the listed deliverables! 

# Part 2 

Nice! well done! only one note: 

When you call a private method within another method you cannot call it with self. I would recommend playing around with this yourself to see how its working. 

# Part 4 - Associations
- `appointment.rb` looks good!
- In `doctor.rb` a few questions... It looks like where you have `DoctorPatient` you should have `Appointment` with that change, I think the methods would work. Your methods for Part III should take in a Patient instance as an argument instead of a patient name which I think would help you correct those. Feel free to update, push and let us know for more feedback. 
- In `patient.rb`, same issue with where you have `DoctorPatient` you should have `Appointment`. Also, when making a new appointment, because we call the method on an instance of a Patient, `self` will be the patient instance and the doctor instance will need to be an argument passed into the method. Then make sure you pass them in the correct order to `Appointment.new`