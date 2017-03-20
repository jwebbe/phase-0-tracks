#  --- 5.6 MANDATORY PAIRING: SOLVING PROBLEMS WITH DATA STRUCTURES



# RELEASE 0

array1 = [2, 10, 15, 89]

def search_for_index (array_name, integer)
  index = 0
  item_index = nil

array_name.each do |number|
  if number == integer
    item_index = index
  end
  index += 1
  end
  item_index
end

p search_for_index(array1, 3)

# RELEASE 1

def fib (number)
  array = []
  while array.length < number
    if array.length == 0
      array << 0
    elsif array.length == 1
      array << 1
    else
      array << (array[-2] + array[-1])
    end
  end
  array
end

p fib(6)
p fib(100)

# RELEASE 2

array2 = [4, 6, 99, 1000, 50, 34, 2, 17]

# PSEUDOCODE

# Loop through the array until the variable no_swaps is true.
# Set no_swaps to true.
# Set start as the index of the current iteration.
# Loop through the array while start plus one is less than the length of the array.
# If the value at index(start) is greater than the value of index(start plus one),
# then substitute values at start and (start plus one) with the reverse of those
# values.
# Set variable no_swaps to false
# Increment start by one
# Return the array

def bubble(array)
    no_swaps = false
    until no_swaps
      no_swaps = true
      start = 0
    while(start + 1) < array.length
      if array[start] > array[start+1]
        swapped_values = array.slice!(start,2)
        array.insert(start, swapped_values[1], swapped_values[0])
        no_swaps = false
      end
      start += 1
    end
end
  array
end

p bubble(array2)
