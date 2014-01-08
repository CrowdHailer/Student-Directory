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

def get_names(names)
	outputArray = []
	names.each_with_index do |student, index|
		outputArray << "#{index}. #{student[:name]} (#{student[:cohort]})"
	end
	outputArray
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

outputHeader = get_header("The students of my cohort at Makers Academy")
outputBody = get_names(students)

print (outputHeader.join("\n") + "\n" + outputBody.join("\n") + "\n")

print_names(students)
print_footer(students)