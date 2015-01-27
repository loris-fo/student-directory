# Let's put all students into an array
def input_students
	puts "Please enter the names and country of birth of the students"
	puts "To finish, just hit return twice"
	# create an empty array
    students = []
    # get the first name
    name = gets.chomp
    #while the name is not empty, repeat this code
    country_of_birth = gets.chomp
    while !name.empty? && !country_of_birth.empty? do# add the student hash to the array
      students << {:name => name, :country => country_of_birth, :cohort => :february}
      puts "Now we have #{students.length} students"
      # get another name from the user
      name = gets.chomp
      country_of_birth = gets.chomp
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
  	puts "#{student[:name]}, from #{student[:country]}, (#{student[:cohort]} cohort)".center(70)
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

