require 'json'

hash = {
  "name" => "sung",
  "age" => 26
}

puts hash.to_json

json = File.read("json.json")
object = JSON.parse(json)
puts object
