array = [1, 2, 3, 4]
print "array = ", array, "\n"

puts "array.each"
array.each { |number| puts number }

puts "array.delete_if"
array_delete_if_odd = array.delete_if { |number| number.odd? }
p array_delete_if_odd

puts "array.map"
array = [1, 2, 3, 4]
array_triple = array.map { |number| number * 3 }
p array_triple

puts "array.select"
array_select_odd = array.select { |number| number.odd? }
p array_select_odd

puts "array.reject"
array_reject_odd = array.reject { |number| number % 2 == 1 }
p array_reject_odd

puts "array.find"
array_even = array.find { |number| number.even? }
p array_even

