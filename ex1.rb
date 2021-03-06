=begin 
Ex1
We're using the each() method to iterate over an array of students. How
can you modify the program to print a number before the name of each student,
e.g. "1. Dr. Hannibal Lecter"? Hint: look into each_with_index()

=end
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
  array.each_with_index {|student, index| puts "#{index+1}. #{student[:name]}, #{student[:cohort]} cohort"}
end

def print_footer(array)
  puts "Overall we have #{array.count} great students."
end

students = input_students
print_header
print_names(students)
print_footer(students)