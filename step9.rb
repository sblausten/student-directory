
def input_students
  students = []
  puts "Please enter names of students. \nAfter each name hit enter. \nTo exit press enter twice."
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: "April"}
    puts "Added #{students.last[:name]}"
    puts "There are now #{students.count} students."
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------"
end

def print_names(array)
  array.each {|student| puts "#{student[:name]}, #{student[:cohort]} cohort"}
end

def print_footer(array)
  puts "Overall we have #{array.count} great students."
end

def interactive_menu
  students = []
  loop do 
    p "1. Input the students"
    p "2. Show the students"
    p "9. Exit"
    selection = gets.chomp

    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else 
      p "I don't know what you want to do - please enter a number for the command."
    end
  end
end

interactive_menu


=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: "April"},
  {name: "Darth Vader", cohort: "April"},
  {name: "Nurse Ratched", cohort: "April"},
  {name: "Michael Corleone", cohort: "April"},
  {name: "Alex DeLarge", cohort: "April"},
  {name: "The Wicked Witch of the West", cohort: "April"},
  {name: "Terminator", cohort: "April"},
  {name: "Freddy Krueger", cohort: "April"},
  {name: "The Joker", cohort: "April"},
  {name: "Joffrey Baratheon", cohort: "April"},
  {name: "Norman Bates", cohort: "April"}
]

=end