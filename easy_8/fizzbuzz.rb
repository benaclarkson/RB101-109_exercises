# Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Input: Two Integers
# Output: Output of all Integers between the two inputs, except if a number is divisible by 3, print "Fizz" and if a number is divisible by 5, print "Buzz" and finally, if a number is divisible by 3 and 5, print "FizzBuzz"

# Al:
# - Create one method definition which determines the value, based on the number passed in as an argument.
#   - With a case expression, layout the resulting return value based on whether the num argument is divisible by 3, 5, both, or none.
# - Create a second method definition called fizzbuzz, which allows for 2 parameters
#   - Initialize an empty array, results
#   - Call the upto method on num1 and pass in num2 as the argument
#   - Execute a do..end block with num passed in as an argument on each iteration, in which the fizzbuzz_value method will be invoked to determine the correct return value
#     - results << fizzbuzz_value(num)
# - puts results.join(', ')

def fizzbuzz_value(num)
  case
  when num % 3 == 0 && num % 5 == 0
    'FizzBuzz'
  when num % 3 == 0
    'Fizz'
  when num % 5 == 0
    'Buzz'
  else
    num
  end
end

def fizzbuzz(num1, num2)
  results = []
  num1.upto(num2) do |num|
    results << fizzbuzz_value(num)
  end
  puts results.join(', ')
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
