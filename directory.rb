students = [
	{name: "Me", cohort: :November},
	{name: "James", cohort: :November},
	{name: "Andrey", cohort: :November},
	{name: "Ming the merciless", cohort: :July},
	{name: "Donald Duck", cohort: :July}
]

def get_header(title)
	outputArray = []
	outputArray << title
	outputArray << "=" * title.length
end

def print_names(names)
	names.each_with_index do |student, index|
		puts "#{index}. #{student[:name]} (#{student[:cohort]})"
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} great students"
end

def input_students(cohort)
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"

	students = []

	name = gets.chomp

	while !name.empty? do
		students << {:name => name, cohort: cohort}
		puts "Now we have #{students.length} students"

		name = gets.chomp
	end
	students
end

students = input_students(:November)

output = get_header("The students of my cohort at Makers Academy")
print (output.join("\n") + "\n")
print_names(students)
print_footer(students)