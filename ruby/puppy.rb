# --- 6.1 Introduction to Classes ---

#  RELEASE 0: Design a Class

# PUPPY ------------------------
# Beagle

# CHARACTERISTICS ----------------
# Sensitivity: very high
# Friendly: yes
# Tolerates Being Alone: no
# Intensity: intense
# Color: varies

# BEHAVIOR -----------------------
# Jump
# Hug
# Scamper

# RELEASE 1: Release 1: Declare Your Class and Create an Instance in IRB

class Puppy

  def play_dead(str)
    puts "Here boy! #{str}"
  end
end

roxy = Puppy.new
puts roxy.play_dead("Play Dead!")


