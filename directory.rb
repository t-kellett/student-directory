#adding students to an array
students = [
{name: "Dr. Hannibal Lecter", cohort: :september},
{name: "Darth Vader", cohort: :september},
{name: "Nurse Ratched", cohort: :september},
{name: "Michael Corleone",  cohort: :september},
{name: "Alex DeLarge",  cohort: :september},
{name: "The Wicked Witch of the West", cohort: :september},
{name: "Terminator", cohort: :september},
{name: "Freddy Kreuger", cohort: :september},
{name: "The Joker", cohort: :september},
{name: "Joffrey Baratheon", cohort: :september},
{name: "Norman Bates", cohort: :september}
]
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

print_header()
print(students)
print_footer(students)