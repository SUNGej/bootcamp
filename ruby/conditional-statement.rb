puts "in ruby, conditional statement 'false' is only nil and false"

puts "do number = 0"
number = 0
puts "do string= \"\""
string = ""

if number
  puts "condition of \"if number\" is true"
end

if string
  puts "condition of \"if string\" is true"
end

unless nil && false
  puts "condition of \"nil && false\" is false"
end
