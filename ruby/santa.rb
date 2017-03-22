#  --- 6.3 Attributes ---

class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = ''
    @ethnicity = ''
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end


jason = Santa.new("#{@gender}", "#{@ethnicity}")
jason.speak
jason.eat_milk_and_cookies("Snickerdoodle")

santas = Santa.new("male", "trans")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santa_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

santa_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santa_array = []

santa_genders.length.times do |count|
  santa_array << Santa.new(santa_genders[count], santa_ethnicities[count])
end

puts santa_array.each.length
