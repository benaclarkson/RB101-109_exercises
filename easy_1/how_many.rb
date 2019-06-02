def count_occurrences(arr1)
  counting_hash = {}

  arr1.each do |element|
    the_count = arr1.count(element)
    counting_hash[element] = the_count
  end

  counting_hash.each_pair {|k,v| puts "#{k} => #{v}"}
end

def downcase_arr(arr1)
  arr1.each {|element| element.downcase! }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

downcase_arr(vehicles)
count_occurrences(vehicles)
