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

days_of_week.each do |days|
  puts "The days of the week are #{days}."
end
puts "----------------------"

months_of_year.each do |month, digit|
  puts "The months in a year #{month} and the digits that follow that month #{digit}."
end


# .map! Method

days_of_week.map! do |days|








































