require 'time'
require 'date'

current_time = Time.new

puts "time noew :", current_time

puts current_time.year, current_time.month, current_time.day
puts current_time.hour, current_time.min, current_time.sec, current_time.wday, current_time.zone

print "is today monday? ", current_time.monday?, "\n"
print "is today tuesday? ", current_time.tuesday?, "\n"
print "is today wednesday? ", current_time.wednesday?, "\n"
print "is today thursday? ", current_time.thursday?, "\n"
print "is today friday? ", current_time.friday?, "\n"
print "is today saturday? ", current_time.saturday?, "\n"
print "is today sunday? ", current_time.sunday?, "\n"

string_time = "20100101151010"
string_to_time = Time.parse(string_time)
puts string_to_time

puts

today = Date.today
puts today, today.year, today.month, today.day

print "is this year leap year? ", today.leap?, "\n"
print "is next year leap year? ", today.next_year.leap?, "\n"
print "is next-next year leap year? ", today.next_year.next_year.leap?, "\n"

sunday_this_week = Date.new(2022, 10, 30)
puts sunday_this_week, sunday_this_week.wday
monday_this_week = sunday_this_week + 1
saturday_this_week = sunday_this_week + 6
puts monday_this_week, saturday_this_week

print "sunday_this_week.wday = ", sunday_this_week.wday, "\n"
print "monday_this_week.wday = ", monday_this_week.wday, "\n"
print "saturday_this_week.wday = ", saturday_this_week.wday, "\n"



















