require 'time'
require 'date'
require 'json'

class Task
  
  def initialize(task_name)
    @task_name = task_name
    @start_time = time_now_string
    @finish_time = ""
    @today = Date.today
    new_hash_data
  end
  
  def time_now_string
    time = Time.new
    return time.hour.to_s + ":" + time.min.to_s
  end
  
  def new_hash_data
    @hash_data = {
      @task_name => {
        #"task_name" => @task_name,
        "start_time": @start_time,
        "finish_time": @finish_time
      }
    }
  end
  
  attr_reader :task_name, :start_time, :finish_time, :today, :hash_data
  
end

class Processor

  OUTPUT_DIRECTORY = "./time-tracking-tool-output/"
  
  def initialize(argument1, argument2)
    unless File.exist?(OUTPUT_DIRECTORY)
      Dir.mkdir(OUTPUT_DIRECTORY)
    end
    @today = Date.today
    @today_string = today.to_s
    @first_argument = argument1
    @second_argument = argument2
    @filename_today = OUTPUT_DIRECTORY + @today_string + ".json"
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
    rescue Exception => e
      puts e.to_s
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
      option_view_today(@today)
    when "view-today"
      option_view_today(@today)
    when "vw"
      option_view_week(@today)
    when "view-week"
      option_view_week(@today)
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
    json_data = JSON.generate(task.hash_data)
    file_json = File.open(@filename_today, "a+")
    file_json.write(json_data)
    file_json.write("\n")
    file_json.close
  end

  def option_finish(task_name)
    puts "finish"
    file = File.read(@filename_today)
    hash = JSON.parse(file)
    time = Time.new
    time_string = time.hour.to_s + ":" + time.min.to_s
    hash[task_name]["finish_time"] = time_string
    File.write(@filename_today, JSON.dump(hash))
  end

  def option_view_today(today)
    #puts "view-today"
    filename = OUTPUT_DIRECTORY + today.to_s + ".json"
    if File.exist?(filename)
      file = File.read(filename)
      puts today, file
    else
      print "File not found! : ", filename, "\n"
    end
  end

  def option_view_week(today)
    #puts "view-week"
    7.times {
      option_view_today(today)
      today -= 1
    }
  end
  
  attr_accessor :today, :today_string
  
end

Processor.new(ARGV[0], ARGV[1])

