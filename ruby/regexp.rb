puts "Regular Expression (regex or regexp or rational expression)"
puts "is pattern to search specified pattern in string"
puts "example: use regex to check string match to phone number form"
puts "to make regex, /.../ or %r{...}"

puts

puts "=~"
print "/test/ =~ \"test.rb\" = ", /test/ =~ "test.rb", "\n"
print "/test/ =~ \" test.rb\" = ", /test/ =~ " test.rb", "\n"
print "/test/ =~ \"  test.rb\" = ", /test/ =~ "  test.rb", "\n"
print "/test/ =~ \"text.rb\" = ", /test/ =~ "text.rb", "  \#not match : nil", "\n"

puts

puts "regex.match(\"string\")"
print "/test/.match(\"test.rb\") = ", /test/.match("test.rb"), "\n"
print "/test/.match(\"text.rb\") = ", /test/.match("text.rb"), "  \#not match : nil", "\n"

print "return of regex.match(\"string\") is MatchData object", "\n"
print "/test/.match(\"test.rb\").class = ", /test/.match("test.rb").class, "\n"

puts

puts "[a-c] means a or b or c, same to [abc]"
print "/[a-z]/.match(\"f\") = ", /[a-z]/.match("f"), "\n"
print "/[a-z0-9]/.match(\"c4\") = ", /[a-z0-9]/.match("c4"), "\n"
print "/[a-z][0-9]/.match(\"c4\") = ", /[a-z][0-9]/.match("c4"), "\n"

puts "[0-9]{3} means three times of [0-9]"
print "/[0-9]{3}/.match(\"1234\") = ", /[0-9]{3}/.match("1234"), "\n"

puts

puts "\\d : decimal"
print "/\\d/.match(\"a\") = ", /\d/.match("a"), "\n"
print "/\\d/.match(\"5\") = ", /\d/.match("5"), "\n"

puts "\\D : character no decimal"
print "/\\d/.match(\"a\") = ", /\d/.match("a"), "\n"
print "/\\d/.match(\"5\") = ", /\d/.match("5"), "\n"

puts "\\w : character"
print "/\\w/.match(\"winter\") = ", /\w/.match("winter"), "\n"
print "/\\w/.match(\"1234\") = ", /\w/.match("1234"), "\n"

puts "\\D : character no decimal"
print "/\\D/.match(\"winter\") = ", /\D/.match("winter"), "\n"
print "/\\D/.match(\"1234\") = ", /\D/.match("1234"), "\n"

puts "\\s : space character"
if /\s/.match("a b")
  puts "\"a b\" has space"
else
  puts "\"a b\" has not space"
end

puts "\\S : character not space"
if /\S/.match("    ")
  puts "\"    \" has only character not space"
else
  puts "\"    \" has space"
end
