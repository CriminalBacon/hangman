require_relative 'letter.rb'
require_relative 'secret.rb'



loaded_word = "guessme"

word = Secret.new(loaded_word)
word.guess_letter("e")
word.print_me