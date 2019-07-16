# Write a method that takes a positive integer, n, as an argument, and displays
# a right triangle whose sides each have n stars. The hypotenuse of the triangle
# (the diagonal side in the images below) should have one end at the lower-left
# of the triangle, and the other end at the upper-right.

# Input: integer representing the number of stars each side of the triangle
#        is to have
# Output: A right-aligned triangle that has n number of stars on each side

# Al:
# - Initialize a counter, which will increase upon each loop iteration
# - Using while counter <= n
# - (n - counter).times do
#     print " "
#   end
# - counter.times do
#     print *
#   end
#   print "\n"
# - counter += 1

require 'pry'

def triangle(n)
  counter = 1
  until counter > n
    (n - counter).times do
      print " "
    end
    counter.times do
      print '*'
    end
    print "\n"
    counter += 1
  end
end

triangle(5)

triangle(9)
