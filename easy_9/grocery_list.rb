# Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

# Input: Array containing strings & integers
# Output: Array containing the correct number of each fruit

# Al:
# - Initialize an empty array
# - Call each on list input
#   - In the do..end block execution, use |fruit| as an argument
#   - fruit[1].times { |_| arr << fruit[0] }

def buy_fruit(list)
  arr = []
  list.each do |fruit|
    fruit[1].times do |_|
      arr << fruit[0]
    end
  end
  arr
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
