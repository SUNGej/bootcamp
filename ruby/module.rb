module Calculator1

  class BaseCalculator
    def self.introduce
      puts "this is BaseCalculator class in module Calculator"
    end
  end
  
  def plus(number1, number2)
    return number1 + number2
  end
  def minus(number1, number2)
    return number1 - number2
  end
  def times(number1, number2)
    return number1 * number2
  end
  def divide(number1, number2)
    return number1 / number2
  end
  
  module_function :plus
  module_function :minus
  module_function :times
  module_function :divide
  
end

module Calculator2

  def plus(number1, number2)
    return number1 + number2
  end

end

class BaseCalculator
  def self.introduce
    puts "this is BaseCalculator class"
  end
end

puts Calculator1.plus(8, 3)
puts Calculator1.minus(8, 3)
puts Calculator1.times(8, 3)
puts Calculator1.divide(8, 3)

Calculator1::BaseCalculator.introduce
BaseCalculator.introduce

class IncludeCalculator1
  include Calculator1
end

class IncludeCalculator2
  include Calculator2
end

#puts IncludeCalculator1.new.plus(3, 5)  #instance method of module is private
puts IncludeCalculator2.new.plus(3, 5)

class PrependCalculator1
  prepend Calculator1
end

class PrependCalculator2
  prepend Calculator2
end

#puts IncludeCalculator1.new.plus(3, 5)  #instance method of module is private
puts PrependCalculator2.new.plus(3, 5)

puts "IncludeCalculator2.ancestors", IncludeCalculator2.ancestors
puts "PrependCalculator2.ancestors", PrependCalculator2.ancestors
puts "include module, module is superclass", "prepend module, class is superclass"

class ExtendCalculator1
  extend Calculator1
end

class ExtendCalculator2
  extend Calculator2
end

#puts ExtendCalculator1.plus(3, 5)  #instance method of module is private
puts ExtendCalculator2.plus(3, 5)
puts ExtendCalculator2.ancestors
puts "extend : no superclass, be instance"
