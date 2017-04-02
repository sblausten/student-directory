@students = []


def print_menu
  p "1. Input the students"
  p "2. Show the students"
  p "3. Save list to students.csv"
  p "4. Load previous list of students"
  p "9. Exit"
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    p "I don't know what you want to do - please enter a number for the command."
  end
end

def add_students name, cohort="April"
	@students << {name: name, cohort: cohort}
end

def input_students
  puts "Please enter names of students. \nAfter each name hit enter. \nTo exit press enter twice."
  name = STDIN.gets.chomp
  while !name.empty? do
      add_students(name)
      puts "Added #{@students.last[:name]}"
      puts "There are now #{@students.count} students."
      name = STDIN.gets.chomp
  end
end

def show_students
  print_header
  print_names
  print_footer
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

def save_students
  file = File.open("students.csv", "w")
  @students.each { |student|
    student_data = [student[:name], student[:cohort]]
    line = student_data.join(",").to_s
    file.puts line
  }
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each { |line|
    name, cohort = line.chomp.split(",")
    add_students(name, cohort)
    }
  puts "Loaded #{@students.count} students."
  file.close
end

def try_load_students
  filename = ARGV.first
  if filename.nil?
  	load_students
    p "Loaded students.csv. #{@students.count} students were added."
  end
  if filename.nil?
  	return
  elsif File.exists?(filename)
    load_students(filename)
    p "Loaded #{@students.count} from #{filename}"
  else
    p "sorry, #{filename} doesn't exist"
    load_students("students.csv")
    p "Loaded default file instead. #{@students.count} students were added."
    exit!
  end
end

try_load_students
interactive_menu
