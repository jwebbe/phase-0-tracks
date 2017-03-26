#  --- 6.4 Modules ---

#  /// Release 1: Write a Simple Module ///
module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end
# Add a yelling_happily method to our module. You can decide what that method should return.
  def self.yelling_happily(expression)
    expression + 3 + ":)"
  end
end

# Add driver code underneath your module declaration that calls both of your module methods.
puts Shout.yell_angrily("This is so Hard")
puts Shout.yelling_happily("This can be fixed in 1, 2, 3")

# /// Release 2: Mix in a Module ///

# Go to flight.rb for the continued project.





