# Let's put all students into an array
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex De Large",
"The Alien",
"Terminator",
"Freddy Kruger",
"The Joker",
"Erik Griffin",
"Julian Veling",
"Alex Parkinson",
"Louise Beh",
"Sean Haughton",
"Edward Brown",
"Kate Beavis",
"Thomas Strothjohann",
"Kevin Lanzon",
"Yannick B.",
"Meads Chalcroft",
"Gabriel Arafa",
"Sebastien Pires",
"Jordan Poultron",
"Tom coakes",
"Vanessa Virgitti",
"Paul Fitzgerald",
"Carrie Christenson",
"Diego Romero",
"Loris Fochesato"]

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print(names)
  names.each {|name| puts name}
end

def print_footer(names)
# finally we print the total
  print "Overall, we have #{names.length} great students\n"
end

# Nothing happens until we call the methods
print_header
print(students)
print_footer(students)

