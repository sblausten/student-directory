require 'csv'
@students = []

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save list to students.csv"
  puts "4. Load previous list of students"
  puts "9. Exit"
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
    puts "I don't know what you want to do - please enter a number for the command."
  end
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
    file = CSV.open("students.csv", "wb")
    @students.each { |student|
      student_data = [student[:name], student[:cohort]]
      line = student_data.join(",").to_s
      file.puts line
    }
    puts "Students saved."
  end

  def add_students name, cohort="April"
    @students << {name: name, cohort: cohort}
  end

  extract = lambda do |line| 
    name, cohort = line.chomp.split(",")
    add_students(name, cohort)
  end

  def load(filename = "students.csv")
    CSV.foreach(filename, &extract)
    puts "Loaded #{@students.count} students from #{filename}"
  end

  def file_load_menu
    puts "What file would you like to load from?"
    filename = gets.chomp
    file_load_logic(filename)
  end

  def file_load_startup
    filename = ARGV.first
    file_load_logic(filename)
  end

  def file_load_logic(filename)
    if filename.nil?
      load
    elsif File.exists?(filename)
      load(filename)
    else
      puts "sorry, #{filename} doesn't exist"
    end
  end

  def startup
    file_load_startup
    interactive_menu
  end

  startup
