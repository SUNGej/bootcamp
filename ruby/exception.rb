puts "raise : force to occur exception"
puts "begin : run command that exception can be occured"
puts "rescue : run command when exception occured"
puts "ensure : run command finally"

puts

begin
  puts "raise Exception"
  raise Exception, "raised Exception"
rescue Exception => e
  puts "Exception occured! : " + e.to_s, "handle exception here"
ensure
  puts "ensure area"
end

puts

puts "NameError"
begin
  puts a
rescue NameError => e
  puts "Exception occured! : " + e.to_s
end

puts

puts "NoMethodError"
begin
  puts Class.no_method("a")
rescue NoMethodError => e
  puts "Exception occured! : " + e.to_s
end

puts

puts "SyntaxError"
begin
  raise SyntaxError
rescue SyntaxError => e
  puts "Exception occured! : " + e.to_s
end

puts

puts "TypeError"
begin
  Math.log10("string")
rescue TypeError => e
  puts "Exception occured! : " + e.to_s
end

puts

puts "ArgumentError"
begin
  Math.log10("string", 4)
rescue ArgumentError => e
  puts "Exception occured! : " + e.to_s
end

puts

puts "ZeroDivisionError"
begin
  result = 10 / 0
rescue ZeroDivisionError => e
  puts "Exception occured! : " + e.to_s
end

puts

puts "LoadError"
begin
  require "a.rb"
rescue LoadError => e
  puts "Exception occured! : " + e.to_s
end

puts

class MyError < StandardError
  def initialize(message = "This is My Exception")
    super
  end
end

puts "custom Error"
begin
  raise MyError
rescue MyError => e
  puts "Exception occured! : " + e.to_s
end

