def input_students
  puts "Please enter the names of the student"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #gets the first name
  name = gets.chomp
  #while name is not empty repeat this code
  while !name.empty? do 
    puts "Please enter the cohort of the student"
    puts "To skip, just hit return"
    #get cohort from user
    cohort = gets.chomp
    #add student and cohort to the array
    !cohort.empty? ? students << {name: name, cohort: cohort} : students << {name: name, cohort: "unassigned"}
    puts "Now we have #{students.count} students"
    #get another name from the user
    puts "Please enter the names of the student"
    puts "To finish, just hit return twice"
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
    puts "#{index+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(50)
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