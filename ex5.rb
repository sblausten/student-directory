#Rewrite the each() method that prints all students using while or until
#control flow methods (Loops).

def input_students
  puts "Please enter names of students. \nAfter each name hit enter. \nTo exit press enter twice."
  students = []
  name = gets.chomp
  while !name.empty? do
      p "How tall are they?"
      height = gets.chomp
      p "Where were they born?"
      birth_place = gets.chomp
      p "What's their coding level out of 5?"
      level = gets.chomp
      students << {name: name,
                   cohort: "April", 
                   height: height, 
                   birth_place: birth_place, 
                   level: level
               }
      p "Added info for #{students.last[:name]}"
      p "There are now #{students.count} students."
      p "Please enter the next student's name."
      name = gets.chomp
    end
    students
  end

  def print_header
    puts "The students of Villains Academy"
    puts "-------"
  end

def print_names(array)
  array.each {|student| puts "#{student}"}
end

  def print_footer(array)
    puts "Overall we have #{array.count} great students."
  end

  students = input_students
  print_header
  print_names(students)
  print_footer(students)