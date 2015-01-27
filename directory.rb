@students = []

def print_header
  puts "The students of my cohort at Makers Academy"
  puts "--------------"
end

def print_students_list
	@students.each do |student|
  	puts "(#{student[:cohort]} cohort), #{student[:name]}".center(70)
  end
end

def print_footer
# finally we print the total
  	puts "Overall, we have #{@students.length} great students"
end

# Let's put all students into an array
def input_students
	puts "Please enter the names and cohort of the students"
	puts "To finish, just hit return twice"
	# create an empty array
    # get the first name
    name = gets.chomp
    #while the name is not empty, repeat this code
    cohort = gets.chomp
    while !name.empty? && !cohort.empty? do# add the student hash to the array
      @students << {:name => name, :cohort => cohort}
      if @students.length == 1
      	puts "Now we have #{@students.length} student"
      else puts "Now we have #{@students.length} students"
      end
      # get another name from the user
      name = gets.chomp
      cohort = gets.chomp
    end
    # return the array of students
    @students
 end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the list to students.csv"
	puts "4. Load the ist from students.csv"
	puts "9. Exit"
end

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "9"
		exit
	when "3"
		save_students
	when "4"
		load_students
	else
		puts "I don't know what you mean, try again"
	end
end

def save_students
  # open the file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
  name, cohort, country = line.chomp.split(',')
    @students << {:name => name, :cohort => cohort.to_sym}
  end
  file.close
end

def interactive_menu
	loop do
		print_menu
		process (gets.chomp)
	end
end
interactive_menu
# Nothing happens until we call the methods