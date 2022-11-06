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
  
  def put_in_clothes(clothes_dirty)
    clothes_dirty.size.times {
      if @tub.size == MAX_CAPACITY
        puts "Machine is full! can't put in more clothes!"
        break
      end
      print "Put in a clothes."
      @tub.push(clothes_dirty[-1])
      clothes_dirty.pop
      print "  Current capacity is ", @tub.size, ".\n"
    }
  end
  
  def put_out_clothes(clothes_clean)
    @tub.size.times {
      clothes_clean.push(@tub[-1])
      @tub.pop
      print "Put out a washed clothes."
      print "  Current capacity is ", @tub.size, ".\n"
      if @tub.empty?
        puts "There is not clothes!"
        break
      end
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

clothes_clean = Array.new

puts "!!35 Dirty clothes!!"
35.times {
  clothes_dirty.push(Clothes.new(true))
}
p clothes_dirty

puts

laundry_machine.put_in_clothes(clothes_dirty)

puts

puts "In laundry machine now"
p laundry_machine.tub

puts

laundry_machine.wash

puts

puts "In laundry machine now"
p laundry_machine.tub

puts

laundry_machine.put_out_clothes(clothes_clean)

puts

puts "!!Left dirty clothes!!"
p clothes_dirty
print clothes_dirty.size, " left\n"

puts

puts "In laundry machine now"
p laundry_machine.tub
print "Is Laundry machine empty? ", laundry_machine.tub.empty?, "\n"

puts

puts "Washed clothes here!"
p clothes_clean

