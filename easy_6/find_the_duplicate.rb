# Given an unordered array and the information that exactly one value in
# the array occurs twice (every other value occurs exactly once), how would
# you determine which value occurs twice? Write a method that will find and
# return the duplicate value that is known to be in the array.

# Input: Array
# Output: An integer representing the only value to occur twice in given array

# Start by sorting the array
# Iterate through the array with a while loop
# So long as the counter is <= arr.length, keep going
# On each iteration, check to see if arr[counter] == arr[counter + 1]
# If so, you've found the duplicate. Return that value and break out of loop

def find_dup(arr)
  arr.sort!
  counter = 0
  while counter <= arr.length
    if arr[counter] == arr[counter + 1]
      return arr[counter]
      break
    end
    counter += 1
  end
end

find_dup([1, 5, 3, 1]) == 1
find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73
