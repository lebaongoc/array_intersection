# Returns a new array to that contains elements in the intersection of the two input arrays
# Time complexity: O(n), n is the number element in the second array that we loop through to identify if it is included in the set
# Space complexity: O(n), n is the size of the intersection array
require "set"

def intersection(array1, array2)
  if array1 == nil || array2 == nil
    return []
  end
  array1_set = Set.new(array1)
  intersection_array = []

  array2.each do |num|
    if array1_set.include? num
      intersection_array << num
    end
  end
  return intersection_array
end
