require 'time'
require 'date'
require 'yaml'

#create ./time-tracking-tool-output/(yyyy-mm-dd).yml file a day
#task_name, start_time, finish_time in .yml file
#
#put data in .yml file when a set of (task_name, start_name, finish_time) exist
#may create temporary .yml file


class Task
  
  def initialize(task_name)
    @task_name = task_name
    @start_time = time_now_string
    @finish_time = nil
    @today = Date.today
  end
  
  def time_now_string
    time = Time.new
    return time.hour.to_s + ":" + time.min.to_s
  end
  
  #def finish_task(task_name) ?
  
  #def read_today ?
  
  #def read_week ?
  
  #def write_task ?
  
  attr_reader :task_name, :start_time, :finish_time, :today
  
end

class Processor

  def initialize(argument1, argument2)
    @first_argument = argument1
    @second_argument = argument2
    check_option_argument(@first_argument)
  end
  
  def check_option_argument(option_argument)
    begin
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
    rescue
      print_usage
    end
    
  end
  
  def check_option(option_string)
    case option_string
    when "s"
      option_start(@second_argument)
    when "start"
      option_start(@second_argument)
    when "f"
      option_finish(@second_argument)
    when "finish"
      option_finish(@second_argument)
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
    puts "Please put corret option!"
    puts "usage"
  end
  
  def option_start(task_name)
    puts "start"
    task = Task.new(task_name)
    puts task.task_name, task.start_time, task.finish_time, task.today
  end

  def option_finish(task_name)
    puts "finish"
  end

  def option_view_today
    puts "view-today"
  end

  def option_view_week
    puts "view-week"
  end

  #def finish_task(task_name) ?
  
  #def read_today ?
  
  #def read_week ?
  
  #def write_task ?
  
end


Processor.new(ARGV[0], ARGV[1])


