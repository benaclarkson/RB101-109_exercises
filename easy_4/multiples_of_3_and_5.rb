# Write a method that searches for all multiples of 3 or 5 that lie between 1 and
# some other number, and then computes the sum of those multiples. For instance,
# if the supplied number is 20, the result should be
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#
# You may assume that the number passed in is an integer greater than 1.

# input: integer
# output: the sum of all the multiples of 3 and 5 derived from the input integer
# rules:
#   - input will be greater than 1

# multisum(3) == 3
# multisum(5) == 8
# multisum(10) == 33
# multisum(1000) == 234168

# array of all multiples, which will then be added together

# use Integer#upto to go through all the numbers in the input integer
# if any number % 3 == 0 or % 5 == 0 then add it to multples array
# once looping has completed, return the sum of all values in multiples array

def multisum(num)
  multiples = []

  num.downto(0) do |n|
    if n % 3 == 0 || n % 5 == 0
      multiples << n
    end
  end

  multiples.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168
