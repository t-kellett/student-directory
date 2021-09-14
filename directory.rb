#adding students to an array
students = [
"Dr. Hannibal Lecter",
"Dart Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Kreuger",
"The Joker",
"Joffrey Baratheon",
"Norman Bates"
]
#printing them out
def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print(names) 
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{students.count} great students"
end

print_header()
print(students)
print_footer(students)