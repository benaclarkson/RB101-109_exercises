def reverse_words(input)
  arr1 = input.split
  arr1.each do |element|
    element.reverse! if element.length >= 5
  end
  arr1.join(' ')
end


puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
