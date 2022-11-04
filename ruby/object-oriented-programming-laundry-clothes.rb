class Clothes
  
  def initialize(dirty)
    @dirty = dirty
    
  end
  
  attr_accessor :dirty
  
end

class LaundryMachine

  MAX_CAPACITY = 30
  MINUMUM_TIME = 40
  
  def initialize
    @tub = Array.new
  end
  
  def put_in_clothes(number, clothes)
    number.times { |number|
      if @tub.size == MAX_CAPACITY
        puts "Machine is full! can't put in more clothes!"
        break
      end
      print "Put in a clothes."
      @tub.push(clothes[-1])
      clothes.pop
      print "  Current capacity is ", @tub.size, ".\n"
    }
  end
  
  def put_out_clothes(number, clothes)
    number.times { |number|
      if @tub.empty?
        puts "There is not clothes!"
        break
      end
      clothes.push(@tub[-1])
      @tub.pop
      print "Put out a clothes."
      print "  Current capacity is ", @tub.size, ".\n"
    }
  end
  
  def wash
    laundry_time = MINUMUM_TIME + @tub.size * 2
    puts "Wash start!"
    print "Finish after ", laundry_time, " minutes.\n"
    @tub.shuffle
    @tub.each { |clothes|
      clothes.dirty = false
    }
    puts "Finished. Washed all clothes in machine!"
  end
  
  attr_accessor :tub
  attr_reader :MINUMUM_TIME, :MAX_CAPACITY
  
end

laundry_machine = LaundryMachine.new

clothes_dirty = Array.new

for number in 0...35
  clothes_dirty.push(Clothes.new(true))
end

puts "!!Dirty clothes!!"
p clothes_dirty

puts

laundry_machine.put_in_clothes(35, clothes_dirty)

puts

puts "In laundry machine now"
p laundry_machine.tub

puts

laundry_machine.wash

puts

puts "In laundry machine now"
p laundry_machine.tub

puts

laundry_machine.put_out_clothes(33, clothes_dirty)

puts

p clothes_dirty

puts

clothes_dirty.reverse_each { |clothes|
  if !clothes.dirty
    clothes_dirty.delete(clothes)
  end
}
puts "!!Left dirty clothes!!"
p clothes_dirty
print clothes_dirty.size, " left\n"

puts

puts "In laundry machine now"
p laundry_machine.tub
print "Is Laundry machine empty? ", laundry_machine.tub.empty?, "\n"

