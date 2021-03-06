#  --- 5.6 MANDATORY PAIRING: SOLVING PROBLEMS WITH DATA STRUCTURES

# /// RELEASE 0 ///

# Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

def search_array(arr, integer)
  index = 0
  int_index = nil

arr.each do |number|
  if number == integer
    int_index = index
  end
  index += 1
  end
  int_index
end

arr = [42, 89, 23, 1]

p search_array(arr, 1)

p search_array(arr, 24)

# /// RELEASE 1 ///

# Add a method to your file that takes a number of Fibonacci terms to generate and returns an array of the terms. For example, fib(6) would return [0,1,1,2,3,5]. Your method should work for a large number of terms. To verify your work: the last number in the array generated by fib(100) will be 218922995834555169026.

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
puts "--------------------------------------------"
p fib(100)

# /// RELEASE 2 ///

#  Choose a simple sorting algorithm to learn about. Bubble sort or insertion sort are good ones for beginners.
#  Pseudocode a sorting method that takes an array of integers and uses a sorting algorithm. The method should return a sorted version of the array. Your pseudocode should not be Ruby-specific.
# Implement the sorting method in Ruby.


# **PSEUDOCODE**

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

array2 = [4, 6, 99, 1000, 50, 34, 2, 17]

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
