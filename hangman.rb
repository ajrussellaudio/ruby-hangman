require_relative("./game")
require_relative("./word")
require_relative("./player")

puts "Please enter a secret word:"
hidden_word = Word.new(gets.chomp)
hangman = Game.new(hidden_word, Player.new("Player 1"))

print %x{clear}


until hangman.is_won? || hangman.is_lost?
  puts "Welcome to Hangman!"
  puts "The hidden word is: #{hangman.reveal_word}"
  puts "#{hangman.lives_remaining} lives remaining"
  puts "Guess a letter:"
  hangman.guess(gets.chomp[0])
  print %x{clear}
end

puts "You win! The word was #{hangman.reveal_word}" if hangman.is_won?
puts "You suck!" if hangman.is_lost?
