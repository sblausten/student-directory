#In the input_students method the cohort value is hard-coded. How can you ask
#for both the name and the cohort? What if one of the values is empty? Can you
#supply a default value? The input will be given to you as a string? How will
#you convert it to a symbol? What if the user makes a typo?

def input_students
  puts "Please enter names of students. \nAfter each name hit enter. \nTo exit press enter twice."
  puts 'If you make a mistake, enter "typo" in the next entry and then try again' #What if the user makes a typo?
  students = []
  name = gets.chomp.downcase.to_sym
  while !name.empty? 
      p "Which cohort are they in?"
      cohort = gets.chomp.downcase.to_sym #The input will be given to you as a string? How will
#you convert it to a symbol?
      if cohort.empty?
        cohort = :unknown #What if one of the values is empty? Can you
#supply a default value?
      elsif cohort == :typo
        redo
      end
      students << {name: name,
                   cohort: cohort
               }
      p "Added info for #{students.last[:name]}"
      p "There are now #{students.count} students."
      p "Please enter the next student's name."
      name = gets.chomp.downcase.to_sym
  end
    students
  end

  def print_header
    puts "The students of Villains Academy"
    puts "-------"
  end

def print_names(array)
  cohort_month = "April"
  cohort = array.map {|student| 
    cohort = student.select {|key, value| (key == :cohort && value == cohort_month)} 

    #puts cohort
  }
  puts "cohort = #{cohort}"
  puts "Array = #{array}"
end

  def print_footer(array)
    puts "Overall we have #{array.count} great students."
  end


  students = input_students
  print_header
  print_names(students)
  print_footer(students)
