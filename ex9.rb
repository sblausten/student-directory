#Right now if we have only one student, the user will see a message "Now we
#have 1 students", whereas it should be "Now we have 1 student". How can you
#fix it so that it used singular form when appropriate and plural form
#otherwise?




def input_students
  puts "Please enter names of students. \nAfter each name hit enter. \nTo exit press enter twice."
  puts 'If you make a mistake, enter "typo" in the next entry and then try again' #What if the user makes a typo?
  students = []
  name = gets.chomp.downcase.to_sym
  while !name.empty?
    p "Which cohort are they in?"
    cohort = gets.chomp.downcase.to_sym 
    if cohort.empty?
      cohort = :unknown 
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
  sorted = array.sort_by {|hash| hash[:cohort]}
  sorted.each {|student| student.each {|key, value| puts "#{key.to_s}: #{value}".center(70)}}
end

def print_footer(array)
  number = array.count
  puts "Overall we have #{number} great student #{'s' if number > 1}" 
end


students = input_students
print_header
print_names(students)
print_footer(students)