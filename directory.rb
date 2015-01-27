# Let's put all students into an array
students = [
{:names => "Erik Griffin", :cohort => :february},
{:names => "Julian Veling", :cohort => :february},
{:names => "Alex Parkinson", :cohort => :february},
{:names => "Louise Beh", :cohort => :february},
{:names => "Sean Haughton", :cohort => :february},
{:names => "Edward Brown", :cohort => :february},
{:names => "Kate Beavis", :cohort => :february},
{:names => "Thomas Strothjohann", :cohort => :february},
{:names => "Kevin Lanzon", :cohort => :february},
{:names => "Yannick B.", :cohort => :february},
{:names => "Meads Chalcroft", :cohort => :february},
{:names => "Gabriel Arafa", :cohort => :february},
{:names => "Sebastien Pires", :cohort => :february},
{:names => "Jordan Poultron", :cohort => :february},
{:names => "Tom coakes", :cohort => :february},
{:names => "Vanessa Virgitti", :cohort => :february},
{:names => "Paul Fitzgerald", :cohort => :february},
{:names => "Carrie Christenson", :cohort => :february},
{:names => "Diego Romero", :cohort => :february},
{:names => "Loris Fochesato", :cohort => :february}
] 

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print(students)
  students.each do |student| 
  	puts "#{student[:names]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
# finally we print the total
  puts "Overall, we have #{names.length} great students"
end

# Nothing happens until we call the methods
print_header
print(students)
print_footer(students)

