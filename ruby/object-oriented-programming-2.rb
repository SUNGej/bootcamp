class MyClass

  @@static_variable = "static variable of MyClass"
  
  def initialize(variable, boolean)
    @instance_variable = variable
    @boolean = boolean
  end
  
  def method_no_return
    puts "this method just puts"
  end
  def method_boolean?
    print "this method return boolean object : "
    return @boolean
  end
  def print_static_variable
    puts @@static_variable
  end
  
  attr_accessor :instance_variable, :boolean, :STATIC_VARIABLE
  
end

puts "name of class follow CamelCase : MyClass, Date, NumberException, ..."
print "name of instance variable and method follow snake_case : "
puts "instance_variable, method_no_return, ..."
puts "initialize method is runned when create new object (=constructor)"

puts

object1 = MyClass.new(1, false)
object2 = MyClass.new(2, true)

object1.method_no_return
puts object1.method_boolean?
object2.method_no_return
puts object2.method_boolean?

puts "to access instance variable of class, opbject of that class needed."
puts "Myclass.instance_variable occurs error"
print "here is instance variable of class : ", object1.instance_variable, "\n"
puts "class variable(=static variable) is shared to all object of same class"
object1.print_static_variable
object2.print_static_variable

