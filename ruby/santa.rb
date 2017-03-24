#  --- 6.3 Attributes ---

class Santa

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end
 # Setter Methods (celebrate_birthday, get_mad_at, gender=)
  def celebrate_birthday
    new_age = @age + 1
  end

  def get_mad_at(reindeers_name)
    reindeers = @reindeer_ranking.index(reindeers_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(reindeers))
    puts "#{reindeers_name} is now in ranking place:"
    puts @reindeer_ranking.index(reindeers_name) + 1
  end
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  # Getter Methods(age, ethnicity)
  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end


santa1 = Santa.new("male", "asian")
santa1.speak
santa1.eat_milk_and_cookies("Snickerdoodle")
santa1.age
santa1.get_mad_at("Rudolph")

santa2 = Santa.new("female", "white")
santa2.eat_milk_and_cookies("Chocolate Chip")
santa2.speak
santa2.celebrate_birthday

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
