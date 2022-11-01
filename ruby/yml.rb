require 'yaml'

yml_data = [
  { "number" => 1,
    "name" => "a",
    "age" => 10
  }
]
file_yml = File.open("yml.yml", "a+")
file_yml.write(yml_data.to_yaml)
read_yml = YAML.load_file("yml.yml")
puts read_yml.inspect
