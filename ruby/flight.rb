#  /// Release 2: Mix in a Module ///

# Write a Flight module. This is done ABOVE our class declarations, at the top of the file.

# ### When we're writing a module as a mixin designed to add instance methods to a class, we don't use the self keyword. We can define our module methods the same way we would write instance methods inside of a class. ###


module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reaching #{altitude} ..."
  end
end


# Declare classes for bird and plane.
class Bird
  # Add your module to your Bird and Plane classes:
  include Flight
end

class Plane
  # Add your module to your Bird and Plane classes:
  include Flight
end
