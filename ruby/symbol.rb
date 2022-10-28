puts "Symbol is similar to String"
puts "but Symbol has some differents"

puts

puts "to def string"
puts "stirng = \"string\""
string = "string"
puts "to def symbol"
puts "symbol = :symbol"
symbol = :symbol
print "Class of string is ", string.class, "\n"
print "Class of symbol is ", symbol.class, "\n"

puts

puts "Symbol use memory less than String."
string1 = "test"
string2 = "test"
print "string1 = ", string1, " string2 = ", string2, "\n"
symbol1 = :test
symbol2 = :test
print "sybmol1 = ", symbol1, " symbol2 = ", symbol2, "\n"

print "string1.object_id = ", string1.object_id, " string2.object_id = ", string2.object_id, "\n"
print "symbol1.object_id = ", symbol1.object_id, " symbol2.object_id = ", symbol2.object_id, "\n"

puts "string1 is not same to string2"
puts "but symbol1 is same to symbol2"

puts


