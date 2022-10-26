#Integer, Float, Rational, Complex < Numberic
#('<' is extends in Java)

integer = 5
puts "integer is ", integer
print integer, " is Integer? : ", integer.integer?, "\n"
integer.times { |number| print number }
puts
5.times { |number| print number }
puts

puts

float = 4.2
print "float is ", float, "\n"
puts float.floor
print float.to_s, " this is string\n"

puts

rational = Rational(4, 3)
puts rational
puts rational.to_f
puts rational.denominator
puts rational.numerator
print rational.to_f, " is ", rational.numerator, "/", rational.denominator, "\n"

puts

complex = Complex(2, 3)
puts complex
puts complex.real
puts complex.imaginary
print complex, " is ", complex.real, "+", complex.imaginary, "\n"
