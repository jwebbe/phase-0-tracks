# --- 6.2 MANDATORY PAIRING: INSTANCE METHODS ---

# *RELEASE 0: Add Behavior to a Class *

# Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
# Add a speak method that takes an integer, and then prints "Woof!" that many times.
# Add a roll_over method that just prints "*rolls over*".
# Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
# Add one more trick -- whichever one you'd like.
# If you haven't already, update your driver code to demonstrate that all of these methods work as expected.

# *RELEASE 1: Declare an Initialize Method
# Add a method to your Puppy class named initialize. It should print "Initializing new puppy instance ..."
# Without changing your driver code, run the program. Does initialize run? When? A1: It does not run.

# *RELEASE 2: Write your own class, and experiment!
# In puppy_methods.rb, design and implement your own class below the Puppy class -- anything you'd like, but it should have an initialize method and at least two other instance methods. Then do the following:

# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data structure.
# Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.

class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(howMany)
    howMany.times do puts "Woof!" end
  end

  def roll_over
   puts "*rolls over*"
  end

  def dog_years(humanYears)
    humanYears*7
  end

  def shedding(hair)
    if hair=="longhair"
      puts "disaster"
    else
      puts "managable"
    end
  end

end

#DRIVER CODE - PUPPY CLASS
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(5)
puppy.roll_over
puts puppy.dog_years(2)
puppy.shedding("longhair")


class Kitten
  def initialize
    puts "Initializing new kitten instance ..."
  end

  def nap(location)
    puts "I am napping at #{location}."
  end

  def speak(howMany)
    howMany.times do puts "Meow!" end
  end

end

# DRIVER CODE - MY KITTEN
my_kittens = []
50.times do
  my_kittens << Kitten.new
end

my_kittens.each do |kitten|
  kitten.nap("bed")
  kitten.speak(1)
end

