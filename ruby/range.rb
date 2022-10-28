puts "range is consist of ascending number/alphabet"

puts "(1..5) means (1 <= number <= 5) : 1, 2, 3, 4, 5"
puts "(1...5) means (1 <= number < 5) : 1, 2, 3, 4"

puts "('a'..'c') means ('a' <= alphabet <= 'c' : 'a', 'b', 'c'"
puts "('a'...'c') means ('a' <= alphabet < 'c' : 'a', 'b'"

puts

(1..5).each { |number| puts number }

puts

("a".."z").each { |alphabet| puts alphabet }
puts
("aa".."bc").each { |alphabet| puts alphabet }

puts

score = 3.3
grade = 
  case score
  when 4.5..4.5 then "A+"
  when 4.0...4.5 then "A"
  when 3.5...4.0 then "B+"
  when 3.0...3.5 then "B"
  when 2.5...3.0 then "C+"
  when 2.0...2.5 then "C"
  when 1.5...2.0 then "D+"
  when 1.0...1.5 then "D"
  else "F"
  end
print "grade of score:", score, " is ", grade, "\n" 
