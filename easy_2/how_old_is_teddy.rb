def age(name)
  name = 'Teddy' if name.empty?
  age = rand(20..200)
  puts "#{name} is #{age} years old!"
end

puts '>> What is your name?'
input = gets.chomp

age(input)
