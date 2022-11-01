class Clothes

  attr_accessor :dirty
  
  def initialize(dirty)
    @dirty = dirty
  end
  
  def dirty?
    return @dirty
  end
  
end

class LaundryMachine

  MAX_CAPACITY = 30
  
  def initialize
    @current_capacity = 0
    @clothes = Array.new(MAX_CAPACITY)
  end
  
  def put_in_clothes
    if @current_capacity == MAX_CAPACITY
      puts "Machine is full! can't put in more clothes!"
    else
      print "Put out a clothes"
      @clothes[@current_capacity] = Clothes.new(true)
      @current_capacity += 1
      print "  current capacity is ", @current_capacity, "\n"
    end
  end
  def put_out_clothes
    if @current_capacity == 0
      puts "There is not clothes!"
    else
      @clothes.delete_at(@current_capacity - 1)
      @current_capacity -= 1
      print "Put out a clothes."
      print "  current capacity is ", @current_capacity, "\n"
    end
  end
  def wash
    for number in 0...@current_capacity
      @clothes.at(number).dirty = false
    end
    puts "Washed all clothes!"
  end
  
  attr_accessor :current_capacity, :clothes, :MAX_CAPACITY
  
end

laundry_machine = LaundryMachine.new

for number in 1..33
  laundry_machine.put_in_clothes
end

p laundry_machine.clothes

laundry_machine.wash

p laundry_machine.clothes

for number in 1..32
  laundry_machine.put_out_clothes
end

puts

for number in 1..20
  laundry_machine.put_in_clothes
end

p laundry_machine.clothes

laundry_machine.wash

p laundry_machine.clothes

for number in 1..10
  laundry_machine.put_out_clothes
end

p laundry_machine.clothes

for number in 1..10
  laundry_machine.put_out_clothes
end

print "Is Laundry machine empty? ", laundry_machine.clothes.empty?, "\n"
