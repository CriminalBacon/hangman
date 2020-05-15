class Secret

    attr_reader :secret_word

    def initialize(secret_word)
        @secret_word = create_secret_word(secret_word)
    end

    def guess_letter(letter)
        @secret_word.each do |c|
            if c.is_equal(letter)
                c.found_me()
            end
        end

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