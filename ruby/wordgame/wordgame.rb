# ---6.7 Solo Challenge: A Game Class---

# Create a class of our word game.
class WordGame
# We allow, guess_count to be read/written
# We allow: word, display_word, and over to be read.
  attr_accessor :guess_count
  attr_reader :word, :display_word, :over

# We initialize our 3 reader class instances and pass through our word as a parameter.
  def initialize(word)
    @word = word
    @guess_count = 0
    @over = false
  end
# A method to print dashes for each character that is left remaining in the field and addes once the length is filled.
  def dash
    '_ ' * @word.length
  end

# A method that will set the total guesses to words length allowing to find out if the user is right or wrong.
  def total_guesses
    total_guesses = @word.length
    @total_guesses = total_guesses
  end

# A method that iterates through the word changing each into a string.
# If the letters guess include the letter given place that into the string.
# Otherwise leave it blank
# Invoke the display word at the end of the iteration.
  def progress(lettersGuessed)
    display_word = ''
    @word.chars.each do |letter|
      if lettersGuessed.include?(letter)
        display_word << letter
      else
        display_word << '_'
      end
    end
    @display_word = display_word
  end

end



# INTERFACE

# prompt the user to enter a word and create a new instance of that below.
puts "Please enter a word."
word = gets.chomp.downcase
newgame = WordGame.new(word)

# We print our dash method to include dashes in between.
p newgame.dash

# Create an empty array to store our letters inside
letters = []

# run our loop while the game is to be over overall. Ask the user to guess a leter store that in lowercase and store into our letters array.
# We check the progess method and join the string together, then print that letter within the display.
# If the world includes the letter that was placed in original continue the game to iterate through the remaining words needed.
# If all the letters match the original word print "Winner!"
# If the counting equals the amount of the word length of guesses then displa the word and tell them they lost.
while !newgame.over
  puts "Guess a letter."
  letter = gets.chomp.downcase
  letters << letter
  newgame.progress(letters.join(''))
  p newgame.display_word

  if !newgame.display_word.include?(letter)
    newgame.guess_count += 1
  end

  if newgame.display_word == newgame.word
    puts "Winner!"
    break
  elsif newgame.guess_count == newgame.total_guesses
    puts "You lose!"
    puts "The word played was #{newgame.word}"
    break
  end
end

