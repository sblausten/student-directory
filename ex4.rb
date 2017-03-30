#Rewrite the each() method that prints all students using while or until
#control flow methods (Loops).

def input_students
  puts "Please enter names of students. \nAfter each name hit enter. \nTo exit press enter twice."
  students = []
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
    index = 0
    while array[index]
      student = array[index]
      puts "#{student[:name]}, #{student[:cohort]} cohort"
      index += 1
    end
  end

  def print_footer(array)
    puts "Overall we have #{array.count} great students."
  end

  students = input_students
  print_header
  print_names(students)
  print_footer(students)
