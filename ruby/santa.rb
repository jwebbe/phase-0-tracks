#  --- 6.3 Attributes ---

#  /// RELEASE 0 ///
# A speak method that will print "Ho, ho, ho! Haaaappy holidays!" (Santa has been working on being more inclusive.)

# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"

# An initialize method that prints "Initializing Santa instance ...".

# Add a bit of code below your class declaration to check that you're able to initialize a Santa instance and call its methods.



class Santa

  def initialize
    puts "Initializing Santa instance ..."
    @gender = ''
    @ethnicity = ''
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

jenny = Santa.new
ralph = Santa.new

jenny.speak
jenny.eat_milk_and_cookies("Snickerdoodle")

ralph.speak
ralph.eat_milk_and_cookies("Chocolate Chip")
