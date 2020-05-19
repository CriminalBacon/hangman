require_relative 'letter.rb'
require_relative 'secret.rb'
require_relative 'fileio.rb'
require 'yaml'


if File.file?("savefile.yaml")
    word = load_yaml
else
    word = Secret.new(choose_word(read_dictionary))
    p word.is_letter_in_secret('e')
    
end


while (word.any_more_chances?) && (!word.found_all_letters)

    word.print_me

    puts
    puts "Enter guess -- chances: #{word.chances} -- #{word.get_guessed_letters} -- (type 'sv' to save)"
    letter = gets.chomp
    if letter == 'sv'
        puts "saving..."
        save_to_yaml(word)
        exit
    else
        word.guess_letter(letter)
        
    end
end


