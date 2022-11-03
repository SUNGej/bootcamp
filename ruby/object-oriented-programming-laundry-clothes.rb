class Clothes

  attr_accessor :dirty
  
  def initialize(dirty)
    @dirty = dirty
  end
  
  attr_accessor :dirty
  
end

class LaundryMachine

  MAX_CAPACITY = 30
  MINUMUM_TIME = 40
  
  def initialize
    @clothes = Array.new()
  end
  
  def put_in_clothes(number)
    number.times {
      print "Put in a clothes."
      @clothes.push(Clothes.new(true))
      print "  Current capacity is ", @clothes.size, ".\n"
      if @clothes.size == MAX_CAPACITY
        puts "Machine is full! can't put in more clothes!"
        break
      end
    }
  end
  
  def put_out_clothes(number)
    number.times {
      @clothes.pop
      print "Put out a clothes."
      print "  Current capacity is ", @clothes.size, ".\n"
      if @clothes.empty?
        puts "There is not clothes!"
        break
      end
    }
  end
  
  def wash
    puts "Wash start!"
    print "Finish after ", MINUMUM_TIME + @clothes.size * 2, " minutes.\n"
    @clothes.shuffle
    @clothes.each { |clothes|
      clothes.dirty = false
    }
    puts "Finished. Washed all clothes!"
  end
  
  attr_accessor :clothes
  attr_reader :MINUMUM_TIME, :MAX_CAPACITY
  
end

laundry_machine = LaundryMachine.new

laundry_machine.put_in_clothes(35)

puts "In laundry machine now"
p laundry_machine.clothes

laundry_machine.wash

puts "In laundry machine now"
p laundry_machine.clothes

laundry_machine.put_out_clothes(33)

puts "In laundry machine now"
p laundry_machine.clothes
print "Is Laundry machine empty? ", laundry_machine.clothes.empty?, "\n"

