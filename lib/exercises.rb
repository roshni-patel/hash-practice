# This method will return an array of arrays.
# Each subarray will have strings which are anagrams of each other
# Time Complexity: O(n) to iterate through each string + O(m log m) to sort each string = O(n * m log m); could even be O(n) if strings are small
# Space Complexity: O(n) because the size of the output array and the new hash created depend on the size of the input strings

def grouped_anagrams(strings)
  return strings if strings.length <= 1 
  grouped = Hash.new

  strings.each do |word|
    sorted = word.chars.sort!
    if grouped[sorted].nil? 
      grouped[sorted] = [word]
    else
      grouped[sorted] << word 
    end
  end
  return grouped.values 
end


# This method will return the k most common elements
# in the case of a tie it will select the first occuring element.
# Time Complexity: Overall O(n log n) - O(n) to iterate through the list to populate the hash, plus O(n log n) to sort the hash so O(n + n log n), 
# but we can drop the smaller constant so the time complexity is O(n log n)
# Space Complexity: O(n) because the size of the frequencies hash depends on the length of the input list, plus the result array depends on k,
# but n will always be larger than k, so O(n) overall
def top_k_frequent_elements(list, k)
  result = []
  return result if list.empty? 
  frequencies = Hash.new(0)

  list.each do |element|
    frequencies[element] += 1 
  end

  sorted = frequencies.sort_by { |element, freq| -freq }
  i = 0 
  k.times do 
    result << sorted[i][0]
    i += 1
  end

  return result 
end


# This method will return the true if the table is still
#   a valid sudoku table.
#   Each element can either be a ".", or a digit 1-9
#   The same digit cannot appear twice or more in the same 
#   row, column or 3x3 subgrid
# Time Complexity: ?
# Space Complexity: ?
def valid_sudoku(table)
  raise NotImplementedError, "Method hasn't been implemented yet!"
end
