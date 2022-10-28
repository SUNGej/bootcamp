array = ["first_element", "second_element", "third_element"]
p "array", array
print "size of array = ", array.size, "\n"

puts "to get first elemnt of array, do array.at(0)"
print "array.at(0) = ", array.at(0), "\n"
puts "to get n+1(>=1)'th elemnt of array, do array.at(n(>=0))"

puts "to insert element in array, do array.push(element) , aray.insert(index, element)"
puts "do array.push(\"last_element\")" 
array.push("last_element")
p array
puts "array.push(element) add element in last index of array"

puts "do array.insert(2, \"new_element\")" 
array.insert(2, "new_element")
p array
puts "do array.insert(3, \"new_1\", \"new_2\")"
array.insert(3, "new_1", "new_2")
p array
puts "array.push(element) add element in last index of array"

puts "to delete n+1(>=1)'th elemnt of array, do array.delete_at(n(>=0))"
puts "do array.delete_at(4)"
array.delete_at(4)
p array
puts "to delete \"element\", do array.delete(\"element\")"
puts "do array.delete(\"first_element\")"
array.delete("first_element")
p array

puts

array_empty = Array.new
p "array_empty", array_empty
print "array_empty.empty? = ", array_empty.empty?, "\n"

array_empty_three_space = Array.new(3)
p "array_empty_three_space", array_empty_three_space

array_three_new = Array.new(3, "new")
p "array_three_new", array_three_new

