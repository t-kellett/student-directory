#input gathering student array
def input_students
  puts "Please enter a names of the students"
  puts "To finish, just hit return twice"
  #empty array for students
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :september}
    puts "Now we have #{students.count} students"
    #get another name
    name = gets.chomp
  end
  #return array of students
  students
end 

#printing them out
def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print(students) 
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header()
print(students)
print_footer(students)