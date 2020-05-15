require_relative 'letter.rb'
require_relative 'secret.rb'
require_relative 'load_file.rb'



word = Secret.new(choose_word(read_dictionary))

while (word.any_more_chances?) && (!word.found_all_letters)
    puts
    puts "Enter guess -- chances: #{word.chances} -- #{word.get_guessed_letters}"
    letter = gets.chomp
    word.guess_letter(letter)
    word.print_me
end


