#Our code only works with the student name and cohort. Add more information:
#hobbies, country of birth, height, etc.

def input_students
  instructions = "Please enter names of students.\nAfter each name hit enter.\nTo exit press enter twice."
  instructions.each_line{|l| puts l.center(70)}
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
  array.each {|student| student.each {|key, value| puts "#{key.to_s}: #{value}".center(70)}}
end

  def print_footer(array)
    puts "Overall we have #{array.count} great students.".center(70)
  end

  students = input_students
  print_header
  print_names students
  print_footer students