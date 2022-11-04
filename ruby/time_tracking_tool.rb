require 'time'
require 'date'

class Task

  

end

class Processor

  def initialize(argument1, argument2)
    @first_argument = argument1
    @second_argument = argument2
    check_option_argument(@first_argument)
  end
  
  def check_option_argument(option_argument)
    first_character = option_argument[0]
    second_character = option_argument[1]
    if first_character == "-"
      if second_character == "-"
        option_string = option_argument[2..-1]
      else
        option_string = option_argument[1..-1]
      end
      check_option(option_string)
    else
      print_usage
    end
  end
  
  def check_option(option_string)
    case option_string
    when "s"
      option_start
    when "start"
      option_start
    when "f"
      option_finish
    when "finish"
      option_finish
    when "vt"
      option_view_today
    when "view-today"
      option_view_today
    when "vw"
      option_view_week
    when "view-week"
      option_view_week
    else
      print_usage
    end
  end
  
  def print_usage
    puts "usage"
  end
  
  def option_start
    puts "start"
  end

  def option_finish
    puts "finish"
  end

  def option_view_today
    puts "view-today"
  end

  def option_view_week
    puts "view-week"
  end
  
  
  
end




Processor.new(ARGV[0], ARGV[1])




