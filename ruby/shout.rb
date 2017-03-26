#  --- 6.4 Modules ---

#  /// Release 1: Write a Simple Module ///
# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# # Add a yelling_happily method to our module. You can decide what that method should return.
#   def self.yelling_happily(expression)
#     expression + 3 + ":)"
#   end
# end

# # Add driver code underneath your module declaration that calls both of your module methods.
# puts Shout.yell_angrily("This is so Hard")
# puts Shout.yelling_happily("This can be fixed in 1, 2, 3")

# /// Release 2: Mix in a Module ///

# Go to flight.rb for the continued project.


# /// Release 3: Convert a Standalone Module to a Mixin ///

# Comment out the old code in shout.rb, and make a mixin version of the Shout module instead.
module Shout
  def yelling(expression)
    puts "You make me want to#{expression}!"
  end
end
# Write two classes representing anything that might shout, and include the Shout module in those classes.
class Angered
  include Shout
end

class Joyful
  include Shout
end

# Test your work by adding driver code at the bottom of the file that instantiates instances of your classes and calls the two module methods on each instance.
angered = Angered.new
puts angered.yelling(", go out there and yell at that man")

joyful = Joyful.new
puts joyful.yelling(", do cartwheels in the middle of the road")






