# Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

# Input: String
# Output: Hash containing 3 entries. Lowercase occurences, uppercase occurences, and 'neither' occurences.

# Al:
# - Initialize empty hash, counts
# - Call chars method on input string
# - Iterate through array returned by chars, using each
# - If current iteration match?(/[a-z]/), add 1 to counts[:lowercase]
# - Elsif current iteration match?(/[A-Z]/), add 1 to counts[:uppercase]
# - Else add 1 to counts[:neither]
# - Return hash

def letter_case_count(str)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  str.chars.each do |char|
    if char.match?(/[a-z]/)
      counts[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      counts[:uppercase] += 1
    else
      counts[:neither] += 1
    end
  end

  counts
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
