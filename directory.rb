
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
  array.each {|student| puts "#{student[:name]}, #{student[:cohort]} cohort"}
end

def print_footer(array)
  puts "Overall we have #{array.count} great students."
end

students = input_students
print_header
print_names(students)
print_footer(students)


=begin
students = [
  {name: "Dr. Hannibal Lecter", cohort: "April"},
  {name: "Darth Vader", cohort: "April"},
  {name: "Nurse Ratched", cohort: "April"},
  {name: "Michael Corleone", cohort: "April"},
  {name: "Alex DeLarge", cohort: "April"},
  {name: "The Wicked Witch of the West", cohort: "April"},
  {name: "Terminator", cohort: "April"},
  {name: "Freddy Krueger", cohort: "April"},
  {name: "The Joker", cohort: "April"},
  {name: "Joffrey Baratheon", cohort: "April"},
  {name: "Norman Bates", cohort: "April"}
]

=end