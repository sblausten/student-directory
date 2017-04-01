@students = []

def input_students
  puts "Please enter names of students. \nAfter each name hit enter. \nTo exit press enter twice."
  name = gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: "April"}
    puts "Added #{@students.last[:name]}"
    puts "There are now #{@students.count} students."
    name = gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------"
end

def print_names
  @students.each {|student| puts "#{student[:name]}, #{student[:cohort]} cohort"}
end

def print_footer
  puts "Overall we have #{@students.count} great students."
end

def print_menu
  p "1. Input the students"
  p "2. Show the students"
  p "9. Exit"
end

def show_students
  print_header
  print_names
  print_footer
end

def interactive_menu
  loop do 
    print_menu
    selection = gets.chomp
    case selection
    when "1"
      input_students
    when "2"
      show_students
    when "9"
      exit
    else 
      p "I don't know what you want to do - please enter a number for the command."
    end
  end
end

interactive_menu
