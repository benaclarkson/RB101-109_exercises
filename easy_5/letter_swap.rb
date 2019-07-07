# Given a string of words separated by spaces, write a method that takes this
# string of words and returns a string in which the first and last letters of
# every word are swapped.

# You may assume that every word contains at least one letter, and that the
# string will always contain at least one word. You may also assume that each
# string contains nothing but words and spaces

# swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
# swap('Abcde') == 'ebcdA'
# swap('a') == 'a'

# START with str.split(' ') so that we get an array with each individual word
# LOOP through each word in the array and get the first and last letters
# Probably use slice!(index) to add the return value of first letter to
# variable first_letter (0)
# Do the same for the last letter (-1)

require 'pry'

def swap(str)
  words = str.split(' ')
  new_words = words.map do |word|
    if word.length == 2
      first_letter = word.slice!(0)
      last_letter = word.slice!(-1)

      last_letter + first_letter
    elsif word.length == 1
      word
    elsif word.length >= 3
      first_letter = word.slice!(0)
      last_letter = word.slice!(-1)

      last_letter + word + first_letter
    end
  end

  new_words.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
