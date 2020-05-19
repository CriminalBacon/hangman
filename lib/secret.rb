
class Secret

    attr_reader :secret_word, :guessed_letters, :chances

    def initialize(secret_word)
        @secret_word = create_secret_word(secret_word)
        @guessed_letters = []
        @chances = 6
    end

    def guess_letter(letter)

        if is_letter_in_secret(letter)
            @secret_word.each do |c|
                if c.is_equal(letter)
                    @guessed_letters.push(letter)
                    c.found_me()
                    
                end
            end
        else 
            @chances -= 1
            @guessed_letters.push(letter)
        end
    end

    def is_letter_in_secret(letter)
        word = []
        @secret_word.each do |x|
            word.push(x.value)
        end
        return word.include?(letter)
    end

    def print_me
        @secret_word.each do |c|
            if c.is_found
                print " #{c.value}"
            else
                print " _"
            end
        end
        print "\n"
    end

    def found_all_letters
        found_count = 0
        @secret_word.each do |c|
            if c.is_found && !@guessed_letters.include?(c)
                found_count += 1
            end
        end
        
        @secret_word.length == found_count ? true : false 
    
    end

    def get_guessed_letters
        return @guessed_letters.uniq
    end

    def any_more_chances?
        @chances > 0 ? true : false
    end

    private
    def create_secret_word(word)
        pos = 0
        secret_word = []
        word.each_char do |letter|
            secret_word.push(Letter.new(letter, pos))
            pos += 1
        end
        return secret_word
    end
    
end