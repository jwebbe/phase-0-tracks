# --- 5.3 Mandatory Pairing: Iteration ---

#  /// RELEASE 0 ///
# Write your own method that takes a block. The method should print out a status message before and after running the block. ensure that it can print out several of its own parameters.

def focus_of_the_day
  puts "Good Morning!"
  yield("Exercise", "Painting", "Reading")
end

focus_of_the_day { |focus1, focus2, focus3| puts "Our focus today are... #{focus1}, #{focus2}, and #{focus3}." }

#  Or it can be written as:

def focus_today
  focus_one = "Excercise"
  focus_two = "Painting"
  focus_three = "Reading"
  puts "Good Morning!"
  yield(focus_one, focus_two, focus_three)
end

focus_today { |focus_one, focus_two, focus_three| puts "Our focus today are... #{focus_one}, #{focus_two} and #{focus_three}." }


#  /// RELEASE 1 ///
# Declare an array and a hash, and populate each of them with some data.
# Demonstrate that you can iterate through each one using .each, and then using .map!

days_of_week = [ "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

months_of_year = { January: 1, February: 2, March: 3, April: 4, May: 5, June: 6, July: 7, August: 8, September: 9, October: 10, November: 11, December: 12 }


# .each Method
#  ARRAY
days_of_week.each do |days|
  puts "The days of the week are #{days}."
  puts "----------------------------------------------------"
end

#  HASH
months_of_year.each do |month, digit|
  puts "The #{digit} of #{month} of the year."
  puts "----------------------------------------------------"
end


# .map! Method
# ARRAY
puts "Original data:"
p days_of_week

days_of_week.map! do |days|
  puts days
  days.next
end

puts "After .map! call:"
p days_of_week

# HASH
# puts "Original data:"
# p months_of_year
# p modified_months

# months_of_year.map do |month, digit|
#   modified_months << digit.next
#   puts "#{digit} has changed for #{month}"
# end

# puts "After .map call:"
# p months_of_year
# p modified_months


#  /// RELEASE 2 ///
# Use the documentation to find other Array and Hash methods that take blocks.
# Use one for the Array and One for the Hash.

letters = ["a", "b", "c", "d", "e"]

numbers = { 'one' => 1, 'two' => 2, 'three' => 3, 'four' => 4, 'five' => 5, 'six' => 6 }

# 1. A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

#  .delete_if Method
# ARRAY
puts "Original data:"
p letters

letters.delete_if { |letter| letter < "c" }

# HASH
puts "Original data:"
p numbers

numbers.delete_if { |key, value| key >= "two" }

# 2. A method that filters a data structure for only items that do satisfy a certain condition (for example keeping any numbers that are less than 5).




































