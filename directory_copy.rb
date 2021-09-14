def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #gets the first name
  name = gets.chomp
  #while name is not empty repeat this code
  while !name.empty? do 
    #add the student to the hash array
    students << {name: name, cohort: "november"}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  index = 0
  while students[index]
    student = students[index]
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)"
    index += 1
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)