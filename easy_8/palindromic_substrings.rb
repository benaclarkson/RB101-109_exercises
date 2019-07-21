# Write a method that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as it does backwards. The return value should be arranged in the same sequence as the substrings appear in the string. Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters and pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# Input: String
# Output: Array of palindromic substrings, arranged in the same order as they were input in the initial string
# Rules:
# - Duplicate palindromes should be included mulitple times
# - Case matters -- i.e. "AbcbA" is a palindrome, but "Abcba" and "Abc-bA" are not.

# Al:
# - Within the method definition palindromes, invoke the substrings method (which will also invoke the substrings_at_start method)
# - Iterate through the returned array using select
#   - Within the block execution:
#     word if word == word.reverse && word.size >= 2

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

def palindromes(str)
  substrings(str).select do |word|
    word == word.reverse && word.size >= 2
  end
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
