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
    if students.count == 1
      puts "Now we have 1 student"
    else
      puts "Now we have #{students.count} students"
    end
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

def print_by_cohort(students)
  cohort_hash = {}
  students.each do |student| 
    cohort = student[:cohort]
    name = student[:name]
    if cohort_hash[cohort] == nil
      cohort_hash[cohort] = [name]
    else
      cohort_hash[cohort].push(name)
    end
  end
  cohort_hash.each do |key, value|
    puts "#{key.to_s}: #{value.join(", ")}"
  end
end

def print_footer(students)
  if students.count == 1
    puts "Overall, we have 1 great student"
  else 
    puts "Overall, we have #{students.count} great students"
  end
end

#nothing happens until we call the methods
students = input_students
print_header
print(students)
print_by_cohort(students)
print_footer(students)