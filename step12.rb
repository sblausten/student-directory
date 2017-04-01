@students = []

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each { |line|
    name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort}
  }
  file.close
end

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
    p "3. Save list to students.csv"
    p "4. Load previous list of students"
    p "9. Exit"
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

  def show_students
    print_header
    print_names
    print_footer
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

  def interactive_menu
    loop do
      print_menu
      process(gets.chomp)
    end
  end

  interactive_menu
