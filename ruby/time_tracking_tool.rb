require 'time'
require 'date'

class Task

  

end

def print_usage
  puts "usage"
end

def check_option_omitted(option_string)
  case option_string
  when "s"
    option_start
  when "f"
    option_finish
  when "vt"
    option_view_today
  when "vw"
    option_view_week
  else
    print_usage
  end
end

def check_option_full(option_string)
  case option_string
  when "start"
    option_start
  when "finish"
    option_finish
  when "view-today"
    option_view_today
  when "view-week"
    option_view_week
  else
    print_usage
  end
end

def option_start
  puts "start"
end

def option_finish
  puts "finish"
end

def option_view_today
  puts "view-today"
end

def option_view_week
  puts "view-week"
end

argument_array = ARGV
puts argument_array.length
first_argument = ARGV[0]
second_argument = ARGV[1]
puts "first_argument", first_argument
puts "second_argument", second_argument

first_argument_first_character = first_argument[0]
first_argument_second_character = first_argument[1]


puts "first_argument_first_character", first_argument_first_character
puts "first_argument_second_character", first_argument_second_character

if first_argument_first_character == "-"
  if first_argument_second_character == "-"
    first_argument_option_string = first_argument[2..-1]
    check_option_full(first_argument_option_string)
  else
    first_argument_option_string = first_argument[1..-1]
    check_option_omitted(first_argument_option_string)
  end
else
  print_usage
end




