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
# first we print the list of students
puts "The students of my cohort at Makers Academy"
puts "--------------"
students.each {|student| puts student}
# finally we print the total
print "Overall, we have #{students.length} great students\n"