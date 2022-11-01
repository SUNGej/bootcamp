if Dir.exist?("test-directory")
  puts "test-directory exists"
  #puts "remove test-directory"
  #Dir.rmdir("test-directory")
else
  puts "test-directory does not exists"
  puts "create test-directory"
  Dir.mkdir("test-directory")
end

puts "current directory : " + Dir.pwd
puts "change directory to " + "/test-directory"
Dir.chdir("test-directory")
puts "current directory : " + Dir.pwd

new_file = File.new("new-file.txt", "w")
new_file.write("test")
new_file.close

file = File.open("new-file.txt", "r")
puts file.read()
file.close

File.delete("new-file.txt")
puts "new-file.txt exist? " + File.exist?("new-file.txt").to_s

puts "change directory to ../"
Dir.chdir("../")
puts "current directory : " + Dir.pwd

if Dir.exist?("test-directory")
  puts "remove test-directory"
  Dir.rmdir("test-directory")
  puts "test-directory exist? " + Dir.exist?("test-directory").to_s
end

