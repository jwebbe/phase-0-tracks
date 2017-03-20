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

#driver code
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

# DRIVER CODE
my_kittens = []
50.times do
  my_kittens << Kitten.new
end

my_kittens.each do |kitten|
  kitten.nap("bed")
  kitten.speak(1)
end

