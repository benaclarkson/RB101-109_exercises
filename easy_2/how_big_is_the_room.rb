def display_area(l, w)
  meters = (l * w).round(2)
  feet = meters * 10.7639
  puts "The area of the room is #{meters} square meters (#{feet.round(2)} square feet)."
end

puts 'Enter the length of the room in meters:'
length = gets.chomp.to_f

puts 'Enter the width of the room in meters:'
width = gets.chomp.to_f

area(length, width)

=begin

P
Build a program that asks a user for the length and width of a room in meters
and then displays the area of the room in both square meters and square feet.
- Input: user input of length and width
- Output: area of room in sq ft and sq m
- Rules:
  - User input must be >= 1 -- Per instructions, don't worry about this.
  - Method must allow for floating numbers

E
Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

D
- Floating point number

A
START GET length and width from user
SET length to user input
SET width to user input
MULTIPLY length by width for sq m
MULTIPLY sq m by 10.7639 to GET sq ft
END by printing strings with the interpolated data just calculated

NOTES: 1 square meter == 10.7639 square feet

=end
