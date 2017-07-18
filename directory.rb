def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  # get the first names
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do
    # add the studen hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  # return array of students
  students
end

def print_header
  puts "The students of Villains Academy are"
  puts "-------------"
end

def print(students)
  i=0
    while i < students.count
      puts "#{students[i][:name]} (#{students[i][:cohort]}) cohort"
      i += 1
    end
end


def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
