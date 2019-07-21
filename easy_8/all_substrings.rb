# Write a method that returns a list of all substrings of a string. The returned list should be ordered by where in the string the substring begins. This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the previous exercise:

# Input: String
# Output: A list of all substrings of a string. Ordered by where in the string the substring begins.

def substrings_at_start(string, strt_index)
  result = []
  strt_index.upto(string.size - 1) do |index|
    result << string[strt_index..index]
  end
  result
end

def substrings(str)
  all_results = []
  start_index = 0
  while start_index < str.size
    all_results << substrings_at_start(str, start_index)
    start_index += 1
  end
  all_results.flatten
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
