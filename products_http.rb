require "http"

system "clear"
puts "Choose a product"
puts "[1] Lifelike Inflatable Elephant"
puts "[2] Meat Shredder Claws"
puts "[3] Nicolas Cage Pillow"
puts "[4] Thanos One-Piece Swimsuit for Men"

input_option = gets.chomp

if input_option.to_i == 1
  response = HTTP.get("http://localhost:3000/first_product")
  puts response.parse["product1"]
elsif input_option.to_i == 2
  response = HTTP.get("http://localhost:3000/second_product")
  puts response.parse["product2"]
elsif input_option.to_i == 3
  response = HTTP.get("http://localhost:3000/third_product")
  puts response.parse["product3"]
elsif input_option.to_i == 4
  response = HTTP.get("http://localhost:3000/fourth_product")
  puts response.parse["product4"]
else
  puts input_option
end