# Write a method that takes an Array of Integers between 0 and 19, and returns
# an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven,
# twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Input: array of integers
# Output: array of integers, sorted based on the english equivalent of each
#         number

# Hash and an array

# Iterate through the array of integers using each
# Replace each integer with its english equivalent
# Sort while all numbers are in english
# Iterate through array again, re-replacing all strings with integer equivalents
# Return adjusted array

NUMBERS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five',
  6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten',
  11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen',
  15 => 'fifteen', 16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen',
  19 => 'nineteen'
}

def alphabetic_number_sort(array)
  eng_arr = array.map do |num|
    num = NUMBERS[num]
  end

  ordered_arr = eng_arr.sort.map do |num|
    NUMBERS.invert[num]
  end

  ordered_arr
end


alphabetic_number_sort((0..19).to_a) == [
   8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
   6, 16, 10, 13, 3, 12, 2, 0
 ]

# MUCH simpler solution
# NUMBER_WORDS = %w(zero one two three four
#                  five six seven eight nine
#                  ten eleven twelve thirteen fourteen
#                  fifteen sixteen seventeen eighteen nineteen)
#
# def alphabetic_number_sort(numbers)
#  numbers.sort_by { |number| NUMBER_WORDS[number] }
# end
