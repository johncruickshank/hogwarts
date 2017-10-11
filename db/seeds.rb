require_relative("../models/student.rb")

Student.delete_all()

student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house' => 'Gryffindor', 'age' => 15})
student2 = Student.new({'first_name' => 'Ron', 'last_name' => 'Weasley', 'house' => 'Gryffindor', 'age' => 15})
student3 = Student.new({'first_name' => 'Draco', 'last_name' => 'Malfoy', 'house' => 'Slytherin', 'age' => 16})
student4 = Student.new({'first_name' => 'Cedric', 'last_name' => 'Diggory', 'house' => 'Hufflepuff', 'age' => 18})
student5 = Student.new({'first_name' => 'Luna', 'last_name' => 'Lovegood', 'house' => 'Ravenclaw', 'age' => 13})

student1.save()
student2.save()
student3.save()
student4.save()
student5.save()
