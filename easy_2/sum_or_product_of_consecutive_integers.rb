numbers_between = []
number = nil

loop do
  puts '>> Please enter an interger greater than 0:'
  number = gets.chomp.to_i

  break if number > 0
  puts "Sorry, that's not a valid number. Please try again."
end

number.downto(1) { |n| numbers_between << n }

loop do
  puts '>> Enter \'s\' to compute the sum, \'p\' to compute the product:'
  calculation = gets.chomp.downcase

  if calculation == 's'
    sum = numbers_between.sum
    puts "The sum of the integers between 1 and #{number} is #{sum}"
    break
  elsif calculation == 'p'
    product = numbers_between.inject(:*)
    puts "The product of the integers between 1 and #{number} is #{product}"
    break
  else
    puts 'Unknown command. Please try again.'
  end
end

=begin
P
Ask user for integer > 0
Ask if user wants to determine sum or product of all numbers between 1 & input
- Input: Integer (user input), String (Sum or Product?)
- Output: Integer (sum or product, based on user input)


E
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

D
- Variable holding user-inputted integer
- Conditional based on 's' or 'p'
- Array in which to place all numbers between 1 and entered integer

A
numbers_between = []

START by GETTING NUMBER from user > 0
number.downto(1) { |num| numbers_between << num }
GET 's' or 'p' from user, based on sum or product
numbers_between.sum if 's'
numbers_between.product if 'p'


=end
