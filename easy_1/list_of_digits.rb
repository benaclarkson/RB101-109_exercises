def digit_list(number)
  second_arr = []
  first_arr = number.to_s.split('')
  first_arr.each do |num|
    second_arr << num.to_i
  end
  second_arr
end

puts digit_list(12345) == [1, 2, 3, 4, 5]
puts digit_list(7) == [7]
puts digit_list(375290) == [3, 7, 5, 2, 9, 0]
puts digit_list(444) == [4, 4, 4]
