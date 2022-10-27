def test_method
  return "run test_method"
end
puts test_method

def test_method2
  "run test_method2"
end
puts test_method2

puts

def return_true_method?
  true
end

if return_true_method?
  print "return of return_true_method? is ", return_true_method?, "\n"
end

def return_false_method?
  boolean = false
end

unless return_false_method?
  print "return of return_false_method? is ", return_false_method?, "\n"
end

puts

def method_wth_argument(first_name, last_name, age)
  puts "#{first_name} #{last_name}, #{age}"
end
method_wth_argument("Sung", "Eunje", 25)

def method_wth_argument2(first_name: , last_name: , age: )
  puts "#{first_name} #{last_name}, #{age}"
end
method_wth_argument2(first_name: "Sung", last_name: "Eunje", age: 26)

def method_wth_argument3(first_name: , last_name: , age: 27 )
  puts "#{first_name} #{last_name}, #{age}"
end
method_wth_argument3(first_name: "Sung", last_name: "Eunje")

puts

puts "非破壊的メソッド upcase"
string = "qwerty"
print "string = ", string, "\n"
puts "do string.upcase"
string.upcase
puts "after string.upcase"
print "string = ", string, "\n"

puts

puts "破壊的メソッド upcase!"
print "string = ", string, "\n"
puts "do string.upcase!"
string.upcase!
puts "after string.upcase!"
print "string = ", string, "\n"

puts "method_name!"
puts "! at method_name means 破壊的メソッド : オブジェクトの値そのものを変更させるメソッド"

puts

number = 0
def add(number)
  number += 1
end

puts "値渡し"

print "number = ", number, "\n"
puts "do add(number)"
add(number)
print "number = ", number, "\n"

puts

puts "参照渡し"
array = [1, 2, 3]

def array_add(array)
  array << 10
end
print "array = ", array, "\n"
puts "do array.array_add"
array_add(array)
print "array = ", array, "\n"
