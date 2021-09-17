@students = []
#input gathering student array
def input_students
  puts "Please enter a names of the students"
  puts "To finish, just hit return twice"
  name = STDIN.gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :september}
    puts "Now we have #{@students.count} students"
    #get another name
    name = STDIN.gets.chomp
  end
end 

#printing them out
def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print_student_list() 
  @students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer()
  puts "Overall, we have #{@students.count} great students"
end

def print_menu
  puts "Please enter a number from the options below (enter as an integer)"
  puts "1 - Input the students"
  puts "2 - Show the students"
  puts "3 - Save this list to students.csv"
  puts "4 - Load the students from students.csv"
  puts "9 - Exit"
end

def save_students
  #open file for writing
  file = File.open("students.csv", "w")
  # iterate over student array and add to file
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def show_students
  print_header()
  print_student_list()
  print_footer()
end

def load_students(filename = "students.csv")
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from the command line
  return if filename.nil? # get out of the method if it isn't given
  if File.exists?(filename) # if it exists
    load_students(filename)
     puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end

def process(selection)
  case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    when "3"
      save_students
    when "4"
      load_students
    else
      puts "I don't know what you meant, try again"
  end
end

#interactive menu
def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

try_load_students
interactive_menu

