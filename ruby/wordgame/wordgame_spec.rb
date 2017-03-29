
require_relative 'wordgame'

describe WordGame do
  let(:new_game) { WordGame.new("james") }

it "prints dashes for each character space" do
  expect(new_game.dash).to eq "_ _ _ _ _ "
  end

it "expects the number of guesses to equal number of letters" do
  expect(new_game.total_guesses).to eq (5)
  end

it "returns a message based on whether letter is inside word variable or not" do
  expect(new_game.progress('j')).to eq "j____"
  end

end
