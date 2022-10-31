require 'csv'

csv = CSV.open("csv.csv", "a+")
puts csv.read
csv.add_row(["4", "d", "50"])
puts csv.read

csv_data = "number,name,age,5,e,60"
csv_array = CSV.parse(csv_data)
puts csv_array
