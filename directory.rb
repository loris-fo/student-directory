# Let's put all students into an array
def input_students
	puts "Please enter the names, country of birth of the students and their cohort"
	puts "To finish, just hit return twice"
	# create an empty array
    students = []
    # get the first name
    name = gets.chomp
    #while the name is not empty, repeat this code
    country_of_birth = gets.chomp
    cohort = gets.chomp
    while !name.empty? && !country_of_birth.empty? && !cohort.empty? do# add the student hash to the array
      students << {:name => name, :country => country_of_birth, :cohort => cohort}
      if students.length == 1
      	puts "Now we have #{students.length} student"
      else puts "Now we have #{students.length} students"
      end
      # get another name from the user
      name = gets.chomp
      country_of_birth = gets.chomp
      cohort = gets.chomp
    end
    # return the array of students
    students
 end

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print(students)
	students.each do |student|
  	puts "(#{student[:cohort]} cohort), #{student[:name]}, from #{student[:country]}".center(70)
  end
end

def print_footer(names)
# finally we print the total
  	puts "Overall, we have #{names.length} great students"
end

# Nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)

