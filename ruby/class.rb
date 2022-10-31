class Man

  @@GENDER = "man"
  
# attr_reader :name, :age
# attr_writer :name, :age
  attr_accessor :name, :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def print_name
    puts @name
  end
  
  def print_age
    puts @age
  end
  
  def to_s
    "#{@name} #{@age}"
  end
  
  def to_s_protected
    "#{@name} #{@age}"
  end
  
  def to_s_private
    "#{@name} #{@age}"
  end
  
  def Man.hello
    puts "Hello, I am a " + @@GENDER
  end
  
  protected :to_s_protected
  private :to_s_private
  
end

Man.hello
sung = Man.new("Sung", 25)

puts "What is your name?"
sung.print_name
puts "How old are you?"
sung.print_age

puts

print "Yesterday was ", sung.name, "'s birthday.", "\n"
#there is no method .name to read value of name
#but attr_reader has it
sung.age += 1
#there is no method .age to change value of name
#but attr_writer has it
#attr_accessor is attr_reader + attr_writer

puts "How old are you?"
puts sung.age

puts

puts sung.to_s
puts "sung.to_s is public(=default option) method"
puts "protected means can access from everywhere"
puts "run sung.to_s_private here(out of class), not occurs error"

#puts sung.to_s_protected
puts "sung.to_s_protected is protected method"
puts "protected means can access from self_class and extended class only"
puts "run sung.to_s_private here(out of class), occurs error"

#puts sung.to_s_private
puts "sung.to_s_private is private method"
puts "private means can access from only self_class"
puts "run sung.to_s_private here(out of class), occurs error"

puts

print "sung.name.class = ", sung.name.class, "\n"
print "sung.age.class = ", sung.age.class, "\n"
puts "all instance variable of class is object of class"
print "Man.superclass = ", Man.superclass, "\n"
puts "Man class extended Object class, Object class is extended BasicObject class"
puts "BasicObject class is the first class in ruby"
puts "All thing in ruby is object of BasicObject class"

