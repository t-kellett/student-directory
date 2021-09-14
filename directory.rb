student_count = 11
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
puts "The students of Villains Academy"
puts "------------"
students.each do |student|
  puts student
end
#finally we print the total number of students
print "Overall, we have #{students.count} great students"
