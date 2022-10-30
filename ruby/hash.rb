hash = {
  "key1" => "value1",
  "key2" => "value2",
  key3: "value3"
}

print "value of key1 = ", hash["key1"], "\n"
print "value of key2 = ", hash["key2"], "\n"
print "value of :key3 = ", hash[:key3], "\n"

puts

puts "add new key and value"
hash[:key4] = "value_new"
print "value of :key4 = ", hash[:key4], "\n"

puts "hash.store(=add) and to upcase"
puts hash.store(:key5, "value").upcase()


puts

puts "update value of :key1"
hash["key1"] = "value_updated"
print "value of key1 = ", hash["key1"], "\n"

puts

puts "delete in hash"
hash.delete(:key4)
hash.each { |key, value|
  print "key : ", key, ", value : ", value, "\n"
}

puts

puts "how many datas in hash"
puts hash.length

puts

puts "operator of Hash"

hash1 = {
  key10: "value10",
  key11: "value11"
}
hash2 = {
  key10: "value10",
  key11: "value11"
}
print "hash1 == hash2 is ", hash1 == hash2, "\n"

hash3 = {
  "key10" => "value10",
  "key11" => "value11"
}
hash4 = {
  "key10" => "value10",
  "key11" => "value10"
}
print "hash3 == hash4 is ", hash3 == hash4, "\n"

puts

puts "loop of Hash"

hash4.each { |key, value|
  print "key : ", key, ", value : ", value, "\n"
}

hash4.each_key {
  |key| print "key : ", key, "\n"
}

hash4.each_value { |value|
  print "value : ", value, "\n"
}
