# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5 numbers.

# P
# Input: string number from user
# Output: string stating whether or not 6th number matches one of the previous 5 numbers given
# Rules:

# Questions:
#   - Can the input number be negative?
#   - Can the input number be 0?
#     - Do I need to account for the possiblity that the user may input 0 or negative?

# E
# collected_nums.include?(sixth_num) == true

# D
# array of all collected_nums

# A
# Ask the user for a number 6 times
# Store each number in an array called collected_nums
# if collected_nums.include?(sixth_num) == true
#   puts "The number #{sixth_num} appears in #{collected_nums}."
# else
#   puts "The number #{sixth_num} does not appear in #{collected_nums}."
# end

collected_nums = []

puts "==> Enter the 1st number:"
first_num = gets.chomp.to_i
collected_nums << first_num

puts "==> Enter the 2nd number:"
second_num = gets.chomp.to_i
collected_nums << second_num

puts "==> Enter the 3rd number:"
third_num = gets.chomp.to_i
collected_nums << third_num

puts "==> Enter the 4th number:"
fourth_num = gets.chomp.to_i
collected_nums << fourth_num

puts "==> Enter the 5th number:"
fifth_num = gets.chomp.to_i
collected_nums << fifth_num

puts "==> Enter the 6th number:"
sixth_num = gets.chomp.to_i

if collected_nums.include?(sixth_num) == true
  puts "The number #{sixth_num} appears in #{collected_nums}."
else
  puts "The number #{sixth_num} does not appear in #{collected_nums}."
end
