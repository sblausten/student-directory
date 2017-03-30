#Modify your program to only print the students whose name begins with a
#specific letter.

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

def print_names(array, letter)
  array.each {|student| 
  	letter.downcase!
  	unless student[:name].downcase.scan(/\b#{letter}/).empty?
  		puts "#{student[:name]}, #{student[:cohort]} cohort" 
  	end
  }
end

def print_footer(array)
  puts "Overall we have #{array.count} great students."
end

students = input_students
print_header
print_names(students, "S")
print_footer(students)
