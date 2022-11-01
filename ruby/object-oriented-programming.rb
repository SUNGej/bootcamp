puts "Object Oriented Programming"
puts "make object of class"
puts "object do something (method)"

puts

class Person

  def initialize(name, age)
    @name = name
    @age = age
    @sleeping = true
    @hungry = true
  end
  
  def awake
    if @sleeping
      @sleeping = false
      print @name, " waked up!\n"
    else
      print @name, " is awake already.\n"
    end
  end
  def eat
    if @sleeping
      print @name, " is sleeping!\n"
    elsif @hungry
      @hungry = false
      print @name, " eat! is not hungry now.\n"
    else
      print @name, " is not hungry!\n"
    end
  end
  def work
    if @sleeping
      print @name, " is sleeping!\n"
    elsif @hungry
      print @name, " is hungry! can't work.\n"
    else
      @hungry = true
      print @name, " work! is hungry now.\n"
    end
  end
  def sleep
    if @sleeping
      print @name, " is sleeping already.\n"
    else
      @sleeping = true
      print @name, " sleep!\n"
      @hungry = true
    end
  end
  
  attr_accessor :name, :age, :sleeping, :hungry
  
end

person_sung = Person.new("Sung", 10)

person_sung.awake
person_sung.work
person_sung.eat
person_sung.work
person_sung.sleep

class Male < Person
  
  @@Gender = "male"
  
  def gender
    print @name, " is ", @@gender, "\n"
  end
  
end

puts

person_male_kim = Male.new("Kim", 20)
person_male_kim.gender
person_male_kim.awake
person_male_kim.work
person_male_kim.eat
person_male_kim.eat
person_male_kim.sleep

