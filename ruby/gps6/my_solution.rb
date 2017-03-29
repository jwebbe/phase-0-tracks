# Virus Predictor

# I worked on this challenge [with: Alexandra Hill].
# We spent [2.0] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative: instructs the file to load from a local location
# require: load an external file
require_relative 'state_data'

class VirusPredictor

  #Initialize VirusPredictor for each instance (kicking off the creation of an instance, creating states for when we create a new instance of the class)
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @state_density = state_of_origin, population_density
  end

  #calling the two below methods
  def virus_effects
    predicted_deaths(@state_density, @population)
    speed_of_spread(@state_density)
  end

  private

  #evaluating the number of deaths and returning the result state by state
  def predicted_deaths(state_density, population)
    # predicted deaths is solely based on population density
    number_of_deaths = ''
    hash = {200 => 0.4, 150 => 0.3, 100 => 0.2, 50 => 0.1}

    hash.each do |density, float|
      if @population_density >= density
        number_of_deaths = (@population * float).floor
       else
         number_of_deaths = (@population * 0.05).floor
      end
      number_of_deaths
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #taking in data and giving us a value for speed to print out
  def speed_of_spread(state_density) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    hash = {200=>0.5, 150=>1, 100=>1.5, 50=>2}

    hash.each do |density, float|
      if @population_density >= density
        speed = float
      else
        speed = 2.5
      end
      speed
    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_info|
  current_state = VirusPredictor.new(state, state_info[:population_density], state_info[:population])
  current_state.virus_effects
 end



# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
