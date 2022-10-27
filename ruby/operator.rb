puts "代数演算子"
number1 = 5
number2 = 3
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "number1 + number2 = ", number1 + number2, "\n"
print "number1 - number2 = ", number1 - number2, "\n"
print "number1 * number2 = ", number1 * number2, "\n"
print "number1 / number2 = ", number1 / number2, "\n"
print "number1 % number2 = ", number1 % number2, "\n"
print "number1**number2 = ", number1**number2, "\n"

puts

puts "文字列演算子"
string1 = "qwe"
string2 = "rty"

print "string1 = ", string1, ", string2 = ", string2, "\n"
print "string1 + string2 = ", string1 + string2, "\n"
print "string1 = ", string1, ", string2 = ", string2, "\n"
print "string1 << string2 = ", string1 << string2, "\n"
print "string1 = ", string1, ", string2 = ", string2, "\n"
print "string1 * 3 = ", string1 * 3, "\n"

puts

puts "代入演算子"
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 = number2", "\n"
number1 = number2
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 = 5", "\n"
number1 = 5
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 += number2", "\n"
number1 += number2
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 -= number2", "\n"
number1 -= number2
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 *= number2", "\n"
number1 *= number2
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 /= number2", "\n"
number1 /= number2
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 %= number2", "\n"
number1 %= number2
print "number1 = ", number1, ", number2 = ", number2, "\n"

print "do number1 **= number2", "\n"
number1 **= number2
print "number1 = ", number1, ", number2 = ", number2, "\n"

puts

puts "比較演算子"
print "number1 = ", number1, ", number2 = ", number2, "\n"

puts "number1 == number2"
puts number1 == number2

puts "number1 != number2"
puts number1 != number2

puts "number1 > number2"
puts number1 > number2

puts "number1 >= number2"
puts number1 >= number2

puts "number1 < number2"
puts number1 < number2

puts "number1 <= number2"
puts number1 <= number2

puts "number1 <=> number2"
puts number1 <=> number2
puts "number1 <=> number2 print -1 or 1 or 0 or nill"
puts "-1 when number1 < number2 is true"
puts "1 when number1 > number2 is true"
puts "0 when number1 == number2 is true"
puts "nil when can't caompare number1 with number2"

puts

puts "論理演算子"
boolean1 = true
boolean2 = false
print "boolean1 = ", boolean1, ", boolean2 = ", boolean2, "\n"

puts "! means not"
puts "!boolean1"
puts boolean1
puts "!boolean2"
puts boolean2

puts "&& means and"
puts "&& print true when true && true only"
puts "boolean1 && boolean2"
puts boolean1 && boolean2
puts "boolean1 && boolean1"
puts boolean1 && boolean2

puts "|| means or"
puts "|| print false when false && false only"
puts "boolean1 || boolean2"
puts boolean1 || boolean2
puts "boolean2 || boolean2"
puts boolean2 || boolean2

puts

puts "三項演算子"
print "boolean1 = ", boolean1, ", boolean2 = ", boolean2, "\n"
number1 = 5
number2 = 3
print "number1 = ", number1, ", number2 = ", number2, "\n"

puts "condition ? when condition is true : when condition is true"
puts "puts boolean1 ? number1 : number2"
puts boolean1 ? number1 : number2
puts "puts boolean2 ? number1 : number2"
puts boolean2 ? number1 : number2

puts

puts "演算子の優先順位"

puts "high"
puts "! ~", "**","* / %", "+ -", "<< >>", "&", "> >= < <=", "== !=", "&&", "||", ".. ...", "? :",
  "=", "not", "and or"
puts "low"








