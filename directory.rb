
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

print_header
print_names(students)
print_footer(students)