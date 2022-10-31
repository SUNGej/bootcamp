array = ["a", "b", 1, 2, :s]
puts "Array"
p array

hash = {
  "key1" => "value1",
  key2: 2,
  key3: :value3
}
puts "Hash"
hash.each { |key, value|
  print key, " ", value, "\n"
}

puts

puts "Array has value"
puts "Hash has pair of key and value"

puts "index of Array is number(0~last)"
puts "index of Hash is key"

for index in 0...array.size
  print "array[", index, "] = ", array[index], "\n"
end

hash.each { |key, value|
  print "key : ", key, ", value : ", value, "\n"
}

puts

puts "Array's value can be all object"
puts "Hash's key and value can be all object"

for index in 0...array.size
  print "array[", index, "] = ", array[index], ", class is ", array[index].class, "\n"
end

hash.each { |key, value|
  print "key : ", key, ", class is ", key.class,
  ", value : ", value, ", class is ", value.class, "\n"
}
