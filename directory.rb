
students = [
  ["Dr. Hannibal Lecter", :april],
  ["Darth Vader", :april],
  ["Nurse Ratched", :april],
  ["Michael Corleone", :april],
  ["Alex DeLarge", :april],
  ["The Wicked Witch of the West", :april],
  ["Terminator", :april],
  ["Freddy Krueger", :april],
  ["The Joker", :april],
  ["Joffrey Baratheon", :april],
  ["Norman Bates", :april]
]


def print_header
  puts "The students of Villains Academy"
  puts "-------"
end

def print_names(array)
  array.each {|name| puts "#{name[0]}, #{name[1]} cohort"}
end

def print_footer(array)
  puts "Overall we have #{array.count} great students."
end

print_header
print_names(students)
print_footer(students)