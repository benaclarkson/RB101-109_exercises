# Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Input: Array of integers
# Output: A float which is the result of multiplying all the numbers together, dividing that number by array.size, which is then rounded to the 3rd decimal place

# Al:
# - Initialize a variable, start, to the Integer 0
# - Initialize a variable, next_up, to the Integer 1
# - Call a while loop that will continue looping until the next_up variable is <= arr.size
# - Upon each iteration of said block, multiply arr[start] * arr[next_up] and store the result in a variable product
# - Increase the values of start and next_up by 1 upon each iteration

# My failed attempt
def show_multiplicative_average(arr)
  start = 2
  if arr.size > 1
    result = arr[0] * arr[1]
    while start < arr.size do
      result *= arr[start]
      start += 1
    end
  else
    result = arr[0]
  end

  result = result / arr.size.to_f
  sprintf("%#.03f", result)
end

# Correct answer
def show_multiplicative_average(numbers)
  product = 1.to_f
  numbers.each { |number| product *= number }
  average = product / numbers.size
  puts format('%.3f', average)
end

show_multiplicative_average([3, 5]) == 7.500
# The result is 7.500

show_multiplicative_average([6]) == 6.000
# The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667
# The result is 28361.667
