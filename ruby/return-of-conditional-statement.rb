boolean = true
variable_return_of_if =
  if boolean
    "run when boolean is true"
  else
    "run when boolean is false"
  end
print "variable_return_of_if = ", variable_return_of_if, "\n"

puts

boolean = false
variable_return_of_if =
  if boolean
    "run when boolean is true"
  elsif !boolean
    "run when boolean is false"
  end
print "variable_return_of_if = ", variable_return_of_if, "\n"

puts

boolean = true
variable_return_of_if =
  if boolean
    puts "run when boolean is true"
  elsif !boolean
    puts "run when boolean is false"
  end
print "variable_return_of_if = ", variable_return_of_if, "\n"

puts "---------------"

string_today = "Thursday"
print "string_today = ", string_today, "\n"

variable_return_of_case =
case string_today
when "Monday"
  "Monday"
when "Tuesday"
  "Tuesday"
when "Wednesday"
  "Wednesday"
when "Thursday"
  "Thursday"
when "Friday"
  "Friday"
when "Saturday"
  "Saturday"
else
  "Sunday"
end
print "variable_return_of_case = ", variable_return_of_case, "\n"
