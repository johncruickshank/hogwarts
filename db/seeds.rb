require_relative("../models/student.rb")
require_relative("../models/house.rb")

Student.delete_all()
House.delete_all()

house1 = House.new({'name' => 'Gryffindor', 'logo' => 'https://vignette.wikia.nocookie.net/harrypotter/images/e/ee/Gryffindor_Crest-0.jpg/revision/latest/scale-to-width-down/162?cb=20160729145529'})
house2 = House.new({'name' => 'Slytherin', 'logo' => 'https://vignette.wikia.nocookie.net/harrypotter/images/7/72/Ccd53034-c798-452a-8032-f28e06250d8f.jpg/revision/latest/scale-to-width-down/160?cb=20160729150848'})
house3 = House.new({'name' => 'Hufflepuff', 'logo' => 'https://vignette.wikia.nocookie.net/harrypotter/images/6/62/Download_%289%29.jpg/revision/latest?cb=20160729145653'})
house4 = House.new({'name' => 'Ravenclaw', 'logo' => 'https://vignette.wikia.nocookie.net/harrypotter/images/2/28/Download_%284%29.jpg/revision/latest?cb=20160729145945'})

house1.save()
house2.save()
house3.save()
house4.save()

student1 = Student.new({'first_name' => 'Harry', 'last_name' => 'Potter', 'house_id' => house1.id, 'age' => 15})
student2 = Student.new({'first_name' => 'Ron', 'last_name' => 'Weasley', 'house_id' => house1.id, 'age' => 15})
student3 = Student.new({'first_name' => 'Draco', 'last_name' => 'Malfoy', 'house_id' => house2.id, 'age' => 16})
student4 = Student.new({'first_name' => 'Cedric', 'last_name' => 'Diggory', 'house_id' => house3.id, 'age' => 18})
student5 = Student.new({'first_name' => 'Luna', 'last_name' => 'Lovegood', 'house_id' => house4.id, 'age' => 13})

student1.save()
student2.save()
student3.save()
student4.save()
student5.save()
